.class public final synthetic Lcn/mucang/android/account/qrcode/activity/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/account/qrcode/activity/QrCodeAuthActivity;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/account/qrcode/activity/QrCodeAuthActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/account/qrcode/activity/e;->a:Lcn/mucang/android/account/qrcode/activity/QrCodeAuthActivity;

    iput-object p2, p0, Lcn/mucang/android/account/qrcode/activity/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/account/qrcode/activity/e;->a:Lcn/mucang/android/account/qrcode/activity/QrCodeAuthActivity;

    iget-object v1, p0, Lcn/mucang/android/account/qrcode/activity/e;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/mucang/android/account/qrcode/activity/QrCodeAuthActivity;->w(Lcn/mucang/android/account/qrcode/activity/QrCodeAuthActivity;Ljava/lang/String;)V

    return-void
.end method
