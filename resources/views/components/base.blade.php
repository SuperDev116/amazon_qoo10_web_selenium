<!-- extend layouts -->
@extends("layouts.sidebar")
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
                {{-- <h5 style="color:#3550b1" class="mt-3">【データ取得中の商品】:<strong style="color:#3550b1" id="updating">0</strong></h5> --}}
            </div>
            <div class="col-4 col-md-4 order-md-1 order-last">
                {{-- <h5 style="color: #7c8d21;" class="mt-3">【データ取得完了の商品】:<strong style="color: #7c8d21;" id="complete">22</strong></h5> --}}
            </div>
            <div class="col-4 col-md-4 order-md-2 order-first">
                <button type="button" class="m-2 btn btn-danger btn-icon float-lg-end" id="amazon" onclick="allDataRemove()"><i class="bi bi-trash"></i> 削除</button>
                <button type="button" class="m-2 btn btn-primary block float-start float-lg-end" data-bs-toggle="modal" data-bs-target="#backdrop">
                    <i class="bi bi-upload"></i> Qoo10に出品
                </button>
            </div>
        </div>
    </div>
    <section class="section">
        <div class="card">
            <div class="card-body">
                <table class="table table-bordered table-hover datatable" style="min-width:980px">
                    <thead>
                        <tr>
                            <th style="text-align: center;"></th>
                            <th style="text-align: center;">ASIN</th>
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
    function allDataRemove() {
        if (!window.confirm('データを本当に削除しますか？')) {
            return;
        }
        $.ajax({
            url: "{{ route('amazon_remove_alldata') }}",
            type: 'post',
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            data: {},
            success: function(res) {
                if (res === 'success') {
                    location.href = window.location.href;
                }
            }
        });
    }

    $(document).ready(function() {
        $('.datatable').DataTable().ajax.reload();
        $.ajax({
            url: "{{ env('NODE_URL') }}api/v1/amazon/amazonGetProducts",
            type: "post",
            data: {
                user_id: '{{ Auth::id() }}',
            },
            success: function(res) {
                $('#updating').html(`${res.updating}件`);
                $('#complete').html(`${res.complete}件`);
                entry_tracking_history.push(res);
            },
            error: function() {

            }
        });
    });

    var datatable = $('.datatable').DataTable({
        processing: true,
        serverSide: true,
        autoConfig: true,
        pageLength: 10,
        ajax: "{{ route('amazon.list') }}",
        columns: [
            {
                data: null,
                name: 'id',
                render: function(data, type, row) {
                    return (
                        `<div style="text-align: center;">
                            <input type="checkbox" data-id="${row.id}" />
                        </div>`
                    );
                }
            },
            {
                data: null,
                name: 'asin',
                render: function(data, type, row) {
                    if (row.is_prime) {
                        return (
                            `<div style="text-align: center;">
                                <span class="badge bg-info">${row.asin}</span>
                            </div>
                            <div style="text-align: center;">
                                <span class="badge bg-light-primary">Prime</span>
                            </div>`
                        );
                    } else {
                        return (
                            `<div style="text-align: center;">
                                <span class="badge bg-info">${row.asin}</span>
                            </div>
                            <div style="text-align: center;">
                                <span class="badge bg-danger">非Prime</span>
                            </div>`
                        );
                    }
                }
            },
            {
                data: null,
                name: 'title',
                render: function(data, type, row) {
                    return (
                        `<div style="padding: 10px; text-align: center;">
                            <a href="${row.url}" target="_blank">${row.title}</a>
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
                            <a href="${row.url}" target="_blank">
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