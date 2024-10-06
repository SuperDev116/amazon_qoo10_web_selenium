<!-- extend layouts -->
@extends("layouts.main")
<!-- start additional css  -->
@section('additional_CSS')
<!-- start datatable css -->

<link rel="stylesheet" href="{{ asset('assets/extensions/filepond/filepond.css')}}">
<link rel="stylesheet" href="{{ asset('assets/extensions/filepond-plugin-image-preview/filepond-plugin-image-preview.css')}}">

<link rel="stylesheet" href="{{ asset('assets/css/pages/filepond.css')}}">
<link rel="stylesheet" href="{{asset('assets/extensions/datatables.net-bs5/css/dataTables.bootstrap5.min.css')}}">
<link rel="stylesheet" href="{{asset('assets/css/pages/datatables.css')}}">
<!-- end file css -->
<!-- end additional css -->
@endsection
<!-- start this page -->
@section('content')
<div class="page-heading" id="product_list">
    <div class="page-title">
        <div class="row">
            {{-- <h3>商品情報（価格と在庫を確認しましょう！）</h3> --}}
            <div class="col-4 col-md-4 order-md-1 order-last">
            </div>
            <div class="col-4 col-md-4 order-md-1 order-last">
            </div>
            <div class="col-4 col-md-4 order-md-2 order-first">
                <button type="button" class="m-2 btn btn-danger btn-icon float-lg-end" id="remove_products">
                    <i class="bi bi-trash"></i> 削除
                </button>
            </div>
        </div>
    </div>
    <section class="section">
        <div class="card">
            <div class="card-body">
                <table class="table table-bordered table-hover datatable">
                    <thead>
                        <tr>
                            <th style="text-align: center;">
                                <input type="checkbox" class="all" />
                            </th>
                            <th style="text-align: center;">商品ID</th>
                            <th style="text-align: center;">商品名</th>
                            <th style="text-align: center;">画像</th>
                            <th style="text-align: center;">価格</th>
                            <th style="text-align: center;">在庫</th>
                        </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
            </div>
        </div>
    </section>
</div>

@endsection
@push('scripts')
<script src="{{asset('assets/extensions/jquery/jquery.min.js')}}"></script>
<script src="{{asset('assets/js/pages/datatables.min.js')}}"></script>
<script>
    $(document).ready(function() {
        $('.datatable').DataTable().ajax.reload();
    });

    $('.all').on('change', function() {
        $('.product-checkbox').prop('checked', this.checked);
    });

    $('#remove_products').on('click', function() {
        console.log('remove products');
        var checkedCheckboxes = $('input[type=checkbox]:checked');
        var ids = [];
        checkedCheckboxes.each(function() {
            ids.push($(this).data('id'));
        });
        
        $.ajax({
            url: "{{ route('qoo10.destroy') }}",
            type: "post",
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            data: {
                ids: ids,
            },
            beforeSend: function() {
                return window.confirm('選択されている商品を本当に削除しますか。');
            },
            success: function(res) {
                console.log(res);
                Toastify({
                    text: "選択された商品を正常に削除しました。",
                    duration: 5000,
                    close: true,
                    gravity: "top",
                    position: "right",
                    backgroundColor: "#4fbe87",
                }).showToast();
                $('.datatable').DataTable().ajax.reload();
            },
            error: function(err) {
                console.log(err);
                Toastify({
                    text: "申し訳ありません。何かバグがありました。",
                    duration: 5000,
                    close: true,
                    gravity: "top",
                    position: "right",
                    backgroundColor: "rgb(213 45 45 / 72%)",
                }).showToast();
            }
        });
    });

    var datatable = $('.datatable').DataTable({
        processing: true,
        serverSide: true,
        autoConfig: true,
        pageLength: 10,
        ajax: "{{ route('qoo10.list') }}",
        columns: [
            {
                data: null,
                name: 'id',
                orderable: false,
                render: function(data, type, row) {
                    return (
                        `<div style="text-align: center;">
                            <input type="checkbox" class="product-checkbox" data-id="${row.id}" />
                        </div>`
                    );
                }
            },
            {
                data: null,
                name: 'gd_no',
                render: function(data, type, row) {
                    return (
                        `<div style="text-align: center;">
                            <span class="badge bg-info">${row.seller_code}</span>
                        </div>
                        <div style="text-align: center;">
                            <span class="badge bg-light-primary">${row.gd_no}</span>
                        </div>`
                    );
                }
            },
            {
                data: null,
                name: 'title',
                render: function(data, type, row) {
                    return (
                        `<div style="padding: 10px; text-align: center;">
                            <a href="https://www.qoo10.jp/g/${row.gd_no}" target="_blank">${row.title}</a>
                        </div>`
                    )
                }
            },
            {
                data: null,
                name: 'image',
                render: function(data, type, row) {
                    return (
                        `<div style="text-align: center; padding: 10px;">
                            <a href="https://www.qoo10.jp/g/${row.gd_no}" target="_blank">
                                <img src="${row.img_url_main}" alt="IMG 取得中" style="width: 100px; height: 100px;">
                            </a>
                        </div>`
                    );
                }
            },
            {
                data: null,
                name: 'price',
                render: function(data, type, row) {
                    if (row.price == 0) {
                        return (
                            `<div style="text-align: right;">
                                <span class="badge bg-warning">取得中</span>
                            </div>`
                        )
                    } else {
                        return (
                            `<div style="text-align: right;">
                                <span class="badge bg-light-info">${row.price}円</span>
                            </div>`
                        )
                    }
                }
            },
            {
                data: null,
                name: 'quantity',
                render: function(data, type, row) {
                    if (row.quantity == 0) {
                        return (
                            `<div style="text-align: center;">
                                <span class="badge bg-warning">在庫切れ</span>
                            </div>`
                        )
                    } else {
                        return (
                            `<div style="text-align: center;">
                                <span class="badge bg-light-info">${row.quantity}個</span>
                            </div>`
                        )
                    }
                }
            },
        ]
    });
</script>
@endpush