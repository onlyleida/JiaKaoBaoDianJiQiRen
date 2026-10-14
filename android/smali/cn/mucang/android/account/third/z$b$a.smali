.class Lcn/mucang/android/account/third/z$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/third/z$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/account/api/data/ThirdLoginResponse;

.field final synthetic b:Lcn/mucang/android/account/third/z$b;


# direct methods
.method constructor <init>(Lcn/mucang/android/account/third/z$b;Lcn/mucang/android/account/api/data/ThirdLoginResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/third/z$b$a;->b:Lcn/mucang/android/account/third/z$b;

    iput-object p2, p0, Lcn/mucang/android/account/third/z$b$a;->a:Lcn/mucang/android/account/api/data/ThirdLoginResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "\u7b2c\u4e09\u65b9\u767b\u5f55\u6210\u529f"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/account/n/a;->onEvent(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/third/z$b$a;->a:Lcn/mucang/android/account/api/data/ThirdLoginResponse;

    iget-object v1, p0, Lcn/mucang/android/account/third/z$b$a;->b:Lcn/mucang/android/account/third/z$b;

    iget-object v1, v1, Lcn/mucang/android/account/third/z$b;->b:Lcn/mucang/android/account/data/LoginModel;

    invoke-static {v0, v1}, Lcn/mucang/android/account/f;->e(Lcn/mucang/android/account/data/AuthUser;Lcn/mucang/android/account/data/AccountBaseModel;)V

    return-void
.end method
