.class final Lcn/mucang/android/account/qrcode/activity/QrCodeAuthActivity$showProtocolIfNeed$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/qrcode/activity/QrCodeAuthActivity;->E(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $foundIndex:I

.field final synthetic this$0:Lcn/mucang/android/account/qrcode/activity/QrCodeAuthActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/account/qrcode/activity/QrCodeAuthActivity;I)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/account/qrcode/activity/QrCodeAuthActivity$showProtocolIfNeed$2;->this$0:Lcn/mucang/android/account/qrcode/activity/QrCodeAuthActivity;

    iput p2, p0, Lcn/mucang/android/account/qrcode/activity/QrCodeAuthActivity$showProtocolIfNeed$2;->$foundIndex:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/account/qrcode/activity/QrCodeAuthActivity$showProtocolIfNeed$2;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/qrcode/activity/QrCodeAuthActivity$showProtocolIfNeed$2;->this$0:Lcn/mucang/android/account/qrcode/activity/QrCodeAuthActivity;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/mucang/android/framework/account/R$array;->account__scan_login_app_privacy_protocol:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcn/mucang/android/account/qrcode/activity/QrCodeAuthActivity$showProtocolIfNeed$2;->$foundIndex:I

    aget-object v1, v1, v2

    .line 4
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/u0;->g(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
