.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/HttpErrorModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/HttpErrorModel;-><init>()V

    .line 2
    instance-of v1, p0, Lcn/mucang/android/core/api/exception/HttpException;

    if-eqz v1, :cond_0

    .line 3
    check-cast p0, Lcn/mucang/android/core/api/exception/HttpException;

    invoke-virtual {p0}, Lcn/mucang/android/core/api/exception/HttpException;->getHttpStatusCode()I

    move-result p0

    iput p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/HttpErrorModel;->code:I

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, p0, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz v1, :cond_1

    .line 5
    move-object v1, p0

    check-cast v1, Lcn/mucang/android/core/api/exception/ApiException;

    invoke-virtual {v1}, Lcn/mucang/android/core/api/exception/ApiException;->getErrorCode()I

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/HttpErrorModel;->code:I

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/HttpErrorModel;->message:Ljava/lang/String;

    .line 7
    :cond_1
    :goto_0
    iget-object p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/HttpErrorModel;->message:Ljava/lang/String;

    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 8
    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/HttpErrorModel;->message:Ljava/lang/String;

    .line 9
    :cond_2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    return-void
.end method
