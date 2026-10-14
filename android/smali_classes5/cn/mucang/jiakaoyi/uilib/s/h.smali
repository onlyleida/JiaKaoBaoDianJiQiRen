.class public final Lcn/mucang/jiakaoyi/uilib/s/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\u0008J\u0006\u0010\t\u001a\u00020\u0004J\u0008\u0010\n\u001a\u00020\u0008H\u0002J\u0006\u0010\u000b\u001a\u00020\u0008J\u0006\u0010\u000c\u001a\u00020\u0008J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/utils/DeviceTypeUtils;",
        "",
        "()V",
        "KEY_COOPERATION_MODE",
        "",
        "KEY_DEVICE_STATUS_DESC",
        "KEY_SERVICEFEE_EXPIRED",
        "isBuyOut",
        "",
        "isDeviceDesc",
        "isExpires",
        "isLease",
        "isShare",
        "saveDeviceType",
        "",
        "model",
        "Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;",
        "showExpires",
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


# static fields
.field public static final a:Lcn/mucang/jiakaoyi/uilib/s/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/s/h;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/s/h;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/s/h;->a:Lcn/mucang/jiakaoyi/uilib/s/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;)V
    .locals 2

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->getCooperationMode()I

    move-result v0

    const-string v1, "key_cooperationMode"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->k(Ljava/lang/String;I)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->getServiceFeeStatusLabel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_device_status_desc"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->getServiceFeeExpired()Z

    move-result p1

    const-string v0, "serviceFeeExpired"

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->i(Ljava/lang/String;Z)V

    return-void
.end method
