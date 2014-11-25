<#include "fragment/head.ftl">
<!-- webuploader -->
<link href="<@spring.url '/res/backstage/webuploader/css/webuploader.css'/>" rel="stylesheet" type="text/css"/>
<link href="<@spring.url '/res/backstage/webuploader/css/style.css'/>" rel="stylesheet" type="text/css"/>
<!-- Right side column. Contains the navbar and content of the page -->
<aside class="right-side">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            内容管理
            <small>Control panel</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<@spring.url '/manager/index'/>"><i class="fa fa-dashboard"></i> 首页</a></li>
            <li>内容管理</li>
            <li><a href="<@spring.url '/manager/content/list'/>">内容列表</a></li>
            <li class="active">${page_title!"添加内容"}</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <!-- Small boxes (Stat box) -->
        <div class="row">
            <div class="box box-success">
                <div class="box-header">
                    <!-- tools box -->
                    <div class="pull-right box-tools">
                        <button id="saveColumnButton" class="btn btn-success btn-sm" data-toggle="tooltip" title="保存">
                            <i class="fa fa-save"></i> 保存</button>
                        <button id="saveColumnButton" class="btn btn-info btn-sm" data-toggle="tooltip" title="保存草稿箱">
                            <i class="fa fa-save"></i> 保存草稿箱</button>
                        <button id="backContentList" class="btn btn-default btn-sm" data-toggle="tooltip" title="返回">
                            <i class="fa fa-mail-forward"></i> 返回</button>
                    </div><!-- /. tools -->
                    <i class="fa fa-globe"></i>
                    <h3 class="box-title">${page_title!"添加内容"}</h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <form id="columnForm" action="<@spring.url '/manager/column/edit'/>" class="form-horizontal" role="form" method="POST">
                        <input type="hidden" value="" name="colsId">
                        <div class="form-group has-feedback">
                            <label class="col-sm-2 control-label">栏目 <span style="color: #ff0000">*</span></label>
                            <div class="col-sm-4">
                                <input type="text" id="columnTreeInput" class="form-control" value="" readonly>
                                <input type="hidden" id="columnId" name="columnId">
                                <span class="glyphicon glyphicon-chevron-down form-control-feedback" aria-hidden="true"></span>
                                <div id="columnTreeDiv" style="width: 92.6%;background:#fff;display: none;position: absolute;border: 1px #c0c0c0 solid;z-index: 9999;">
                                    <ul id="columnTree" class="ztree"></ul>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="columnName" class="col-sm-2 control-label">标题 <span style="color: #ff0000">*</span></label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" name="columnName" id="columnName"
                                       placeholder="内容标题" value="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="sortNum" class="col-sm-2 control-label" style="line-height: 30px;">外部链接</label>
                            <div class="col-sm-10">
                                <label class="checkbox-inline" style="padding-left: 0px;width: 100px;">
                                    <select class="form-control" id="stick" name="stick">
                                        <option value="0">否</option>
                                        <option value="1">是</option>
                                    </select>
                                </label>
                                <label class="checkbox-inline" style="width: 300px;">
                                    <input type="text" class="form-control" style="width:300px;" name="stickNum" id="stickNum" value="" placeholder="链接地址">
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="sortNum" class="col-sm-2 control-label" style="line-height: 40px;">标题样式</label>
                            <div class="col-sm-10">
                                <label class="checkbox-inline" style="padding-left: 0px;width: 150px;">
                                    <div class="input-group text-color col-sm-12" style="padding-top: 5px;padding-left: 0px;">
                                        <input type="text" id="adv_text_color" name="ati['adv_text_color']"
                                               value=""
                                               class="form-control" placeholder="标题颜色">
                                        <div class="input-group-addon">
                                            <i></i>
                                        </div>
                                    </div>
                                </label>
                                <label class="checkbox-inline" style="padding-left: 0px;">
                                    <input type="checkbox" name="ati['adv_image_openType']" value="_blank"> 加粗
                                </label>
                                <label class="checkbox-inline" style="padding-left: 0px;">
                                    <input type="checkbox" name="ati['adv_image_openType']" value="_self"> 斜体
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="columnName" class="col-sm-2 control-label">关键字</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" name="columnName" id="columnName"
                                       placeholder="内容关键字提示SEO" value="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="columnName" class="col-sm-2 control-label">摘要</label>
                            <div class="col-sm-5">
                                <textarea class="form-control" name="advPosDes" id="advPosDes" rows="4"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="sortNum" class="col-sm-2 control-label" style="line-height: 30px;">作者</label>
                            <div class="col-sm-10">
                                <label class="checkbox-inline" style="padding-left: 0px;width: 150px;">
                                    <input type="text" class="form-control" style="width:150px;" name="stickNum" id="stickNum" value="" placeholder="作者">
                                </label>
                                <label class="checkbox-inline" style="width: 150px;">
                                    <input type="text" class="form-control" style="width:150px;" name="stickNum" id="stickNum" value="" placeholder="来源">
                                </label>
                                <label class="checkbox-inline" style="width: 300px;">
                                    <input type="text" class="form-control" style="width:300px;" name="stickNum" id="stickNum" value="" placeholder="来源地址">
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="sortNum" class="col-sm-2 control-label" style="line-height: 30px;">是否置顶</label>
                            <div class="col-sm-10">
                                <label class="checkbox-inline col-sm-4" style="padding-left: 0px;width: 80px;">
                                    <select class="form-control" id="stick" name="stick">
                                        <option value="0">否</option>
                                        <option value="1">是</option>
                                    </select>
                                </label>
                                <label class="checkbox-inline col-sm-2">
                                    <input type="text" class="form-control" name="stickNum" id="stickNum" value="" placeholder="置顶序号">
                                </label>
                                <label class="checkbox-inline col-sm-3">
                                    <div class="input-group date date-picker">
                                        <input type="text" class="form-control date-picker" placeholder="发布日期">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                    </div>
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="editor" class="col-sm-2 control-label">图片内容</label>
                            <div class="col-sm-10">
                                <input value="添加或选择图片" id="uploadAndViewImage" class="btn btn-success">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="editor" class="col-sm-2 control-label">内容</label>
                            <div class="col-sm-10">
                                <script id="editor" type="text/plain"  style="height:400px;"></script>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
        <!-- /.row -->

    </section>
    <!-- /.content -->
</aside><!-- /.right-side -->
<div class="modal fade" id="addSelectImgModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width: 800px;">
        <div class="modal-content">
            <#--<div class="modal-header">-->
                <#--<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>-->
                <#--<h4 class="modal-title" id="myModalLabel">添加或选择图片</h4>-->
            <#--</div>-->
            <div class="modal-body" style="padding: 5px 0 0 0;">
                <div class="nav-tabs-custom" style="margin-bottom: 0px;">
                    <ul class="nav nav-tabs pull-right">
                        <li class=""><a data-toggle="tab" href="#tab_1">浏览</a></li>
                        <li class="active"><a data-toggle="tab" href="#tab_2">上传</a></li>

                        <li class="pull-left"><h4 class="modal-title" style="line-height: 35px;margin-left: 10px;">添加或选择图片</h4></li>
                    </ul>
                    <div class="tab-content">
                        <div id="tab_1" class="tab-pane">
                            <b>How to use:</b>
                            <p>Exactly like the original bootstrap tabs except you should use
                                the custom wrapper <code>.nav-tabs-custom</code> to achieve this style.</p>
                            A wonderful serenity has taken possession of my entire soul,
                            like these sweet mornings of spring which I enjoy with my whole heart.
                            I am alone, and feel the charm of existence in this spot,
                            which was created for the bliss of souls like mine. I am so happy,
                            my dear friend, so absorbed in the exquisite sense of mere tranquil existence,
                            that I neglect my talents. I should be incapable of drawing a single stroke
                            at the present moment; and yet I feel that I never was a greater artist than now.
                        </div><!-- /.tab-pane -->
                        <div id="tab_2" class="tab-pane active">
                            <div id="wrapper" style="margin: 0;">
                                <div id="container">
                                    <!--头部，相册选择和格式选择-->

                                    <div id="uploader">
                                        <div class="queueList">
                                            <div id="dndArea" class="placeholder">
                                                <div id="filePicker"></div>
                                                <p>或将照片拖到这里，单次最多可选300张</p>
                                            </div>
                                        </div>
                                        <div class="statusBar" style="display:none;">
                                            <div class="upload-progress">
                                                <span class="text">0%</span>
                                                <span class="percentage"></span>
                                            </div><div class="info"></div>
                                            <div class="btns">
                                                <div id="filePicker2"></div><div class="uploadBtn">开始上传</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.tab-pane -->
                    </div><!-- /.tab-content -->
                </div>
            </div>
            <div class="modal-footer" style="margin-top: 0px;">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>
<#include "fragment/footer.ftl">
<!-- webuploader -->
<script src="<@spring.url '/res/backstage/webuploader/webuploader.min.js'/>" type="text/javascript"></script>
<script src="<@spring.url '/res/backstage/webuploader/upload.js'/>" type="text/javascript"></script>
<!-- ueditor -->
<script type="text/javascript" charset="utf-8" src="<@spring.url '/res/backstage/ueditor/ueditor.config.js'/>"></script>
<script type="text/javascript" charset="utf-8" src="<@spring.url '/res/backstage/ueditor/ueditor.all.min.js'/>"> </script>
<script type="text/javascript" charset="utf-8" src="<@spring.url '/res/backstage/ueditor/ueditor.action.js'/>"> </script>
<script type="text/javascript" charset="utf-8" src="<@spring.url '/res/backstage/ueditor/lang/zh-cn/zh-cn.js'/>"></script>
<script type="text/javascript">
    $(function(){
        $(".text-color").colorpicker();
        $('.date-picker').datepicker({
            format: "yyyy-mm-dd",
            language: "zh-CN"
        });
        var ue = UE.getEditor('editor');
        var columnSetting = {
            view : {
                dblClickExpand : false
            },
            async : {
                enable : true,
                dataType : "json",
                url : "<@spring.url "/manager/column/tree/json"/>"
            },
            callback : {
                onAsyncSuccess : function(event, treeId, treeNode, msg) {
                    var zTree = $.fn.zTree.getZTreeObj("columnTree");
                    zTree.expandAll(true);
                },
                onClick:function(event, treeId, treeNode){
                    $("#columnTreeInput").val(treeNode.name);
                    $("#columnId").val(treeNode.id);
                    $("#columnTreeDiv").css("display","none");
                }
            }
        };
        $.fn.zTree.init($("#columnTree"), columnSetting);
        $("#nav_content").imitClick();

        $("#columnTreeInput").click(function () {
            var display = $("#columnTreeDiv").css("display");
            if(display === 'block'){
                $("#columnTreeDiv").css("display","none");
            }else{
                $("#columnTreeDiv").css("display","block");
            }

        });

        $("#backContentList").click(function(){
            location.href="<@spring.url '/manager/content/list'/>"
        });

        $("#colTypeId").chosen({disable_search_threshold: 10,width:'100%'});
        $("#openWay").chosen({disable_search_threshold: 10,width:'100%'});

        $("#uploadAndViewImage").click(function(){
            $("#addSelectImgModal").modal('show');
        });
        $("#addSelectImgModal").on('shown.bs.modal',function(){
            $.v5cms.loadWebUploader();
        });
        $("#columnForm").ajaxForm({
            dataType : 'json',
            success : function(data) {
                if(data.status === "1"){
                    $.v5cms.tooltip({icon:"succeed",content:data.message},function(){
                        location.href="<@spring.url '/manager/column/list'/>";
                    });
                }else{
                    $.v5cms.tooltip({icon:"error",content:data.message},function(){});
                }
            },
            error:function(xhr, status, error){
                $.v5cms.tooltip({icon:"error",content:("错误代码：" + status + " 错误消息：" + error)},function(){});
            }
        });

        $("#saveColumnButton").click(function(){
            var result = $("#columnName").nonEmpty({content:"栏目类型名称不能为空！"});
            if(result) $("#columnForm").submit();
        });
    });
</script>