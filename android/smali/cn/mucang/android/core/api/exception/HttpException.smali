.class public Lcn/mucang/android/core/api/exception/HttpException;
.super Lcn/mucang/android/core/api/exception/FallbackException;
.source "SourceFile"


# static fields
.field public static final INVALID_CODE:I = -0x1


# instance fields
.field private httpStatusCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/api/exception/FallbackException;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcn/mucang/android/core/api/exception/HttpException;->httpStatusCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcn/mucang/android/core/api/exception/FallbackException;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcn/mucang/android/core/api/exception/HttpException;->httpStatusCode:I

    .line 8
    iput p1, p0, Lcn/mucang/android/core/api/exception/HttpException;->httpStatusCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcn/mucang/android/core/api/exception/FallbackException;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcn/mucang/android/core/api/exception/HttpException;->httpStatusCode:I

    .line 5
    iput p2, p0, Lcn/mucang/android/core/api/exception/HttpException;->httpStatusCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/core/api/exception/FallbackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcn/mucang/android/core/api/exception/HttpException;->httpStatusCode:I

    .line 11
    iput p1, p0, Lcn/mucang/android/core/api/exception/HttpException;->httpStatusCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcn/mucang/android/core/api/exception/FallbackException;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lcn/mucang/android/core/api/exception/HttpException;->httpStatusCode:I

    .line 14
    iput p1, p0, Lcn/mucang/android/core/api/exception/HttpException;->httpStatusCode:I

    return-void
.end method


# virtual methods
.method public getHttpStatusCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/core/api/exception/HttpException;->httpStatusCode:I

    return v0
.end method
