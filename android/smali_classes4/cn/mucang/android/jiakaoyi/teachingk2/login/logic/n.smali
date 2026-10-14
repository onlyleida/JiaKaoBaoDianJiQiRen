.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;

.field public final synthetic c:Lcn/mucang/android/account/qrcode/model/QrAuthUser;


# direct methods
.method public synthetic constructor <init>(ILcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;Lcn/mucang/android/account/qrcode/model/QrAuthUser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/n;->a:I

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/n;->b:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/n;->c:Lcn/mucang/android/account/qrcode/model/QrAuthUser;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/n;->a:I

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/n;->b:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/n;->c:Lcn/mucang/android/account/qrcode/model/QrAuthUser;

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;->p(ILcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;Lcn/mucang/android/account/qrcode/model/QrAuthUser;)V

    return-void
.end method
