.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->F(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "cn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity$observeDataChange$2$1",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/ModifyCallback;",
        "onModified",
        "",
        "item",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->g(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;)Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;->y(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;)V

    return-void

    :cond_0
    const-string p1, "gearsVm"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
