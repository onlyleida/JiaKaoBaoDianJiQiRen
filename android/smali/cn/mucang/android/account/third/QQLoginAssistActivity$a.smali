.class Lcn/mucang/android/account/third/QQLoginAssistActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/third/QQLoginAssistActivity;->j(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/account/third/QQLoginAssistActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/account/third/QQLoginAssistActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/third/QQLoginAssistActivity$a;->a:Lcn/mucang/android/account/third/QQLoginAssistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/third/QQLoginAssistActivity$a;->a:Lcn/mucang/android/account/third/QQLoginAssistActivity;

    invoke-virtual {v0}, Lcn/mucang/android/account/third/q;->d()V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/third/QQLoginAssistActivity$a;->a:Lcn/mucang/android/account/third/QQLoginAssistActivity;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lcn/mucang/android/account/third/QQLoginAssistActivity;->h(Lcn/mucang/android/account/third/QQLoginAssistActivity;Lorg/json/JSONObject;)V

    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/third/QQLoginAssistActivity$a;->a:Lcn/mucang/android/account/third/QQLoginAssistActivity;

    iget v1, p1, Lcom/tencent/tauth/UiError;->errorCode:I

    new-instance v2, Ljava/lang/Exception;

    iget-object p1, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/account/third/q;->a(ILjava/lang/Throwable;)V

    return-void
.end method

.method public onWarning(I)V
    .locals 3

    const-string v0, "QQAssistActivity"

    const-string v1, "\u9700\u8981\u7528FileProvider\u6765\u83b7\u53d6\u6570\u636e"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/third/QQLoginAssistActivity$a;->a:Lcn/mucang/android/account/third/QQLoginAssistActivity;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Lcn/mucang/android/account/third/q;->a(ILjava/lang/Throwable;)V

    return-void
.end method
