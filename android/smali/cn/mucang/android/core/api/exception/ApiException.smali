.class public Lcn/mucang/android/core/api/exception/ApiException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private apiResponse:Lcn/mucang/android/core/api/ApiResponse;


# direct methods
.method public constructor <init>(Lcn/mucang/android/core/api/ApiResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/core/api/exception/ApiException;->apiResponse:Lcn/mucang/android/core/api/ApiResponse;

    return-void
.end method


# virtual methods
.method public getApiResponse()Lcn/mucang/android/core/api/ApiResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/exception/ApiException;->apiResponse:Lcn/mucang/android/core/api/ApiResponse;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/exception/ApiException;->apiResponse:Lcn/mucang/android/core/api/ApiResponse;

    invoke-virtual {v0}, Lcn/mucang/android/core/api/ApiResponse;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/exception/ApiException;->apiResponse:Lcn/mucang/android/core/api/ApiResponse;

    invoke-virtual {v0}, Lcn/mucang/android/core/api/ApiResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
