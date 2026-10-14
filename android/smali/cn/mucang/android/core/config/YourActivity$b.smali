.class Lcn/mucang/android/core/config/YourActivity$b;
.super Lcn/mucang/android/core/api/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/config/YourActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/api/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/core/config/YourActivity$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/core/config/YourActivity$b;-><init>()V

    return-void
.end method


# virtual methods
.method b()Ljava/lang/String;
    .locals 2

    const-string v0, "\u5426"

    :try_start_0
    const-string v1, "/api/open/v1/test-user/is-test-user.htm"

    .line 1
    invoke-virtual {p0, v1}, Lcn/mucang/android/core/api/a;->httpGet(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/core/api/ApiResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u662f"
    :try_end_0
    .catch Lcn/mucang/android/core/api/exception/InternalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/mucang/android/core/api/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/mucang/android/core/api/exception/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0

    :catch_1
    const-string v0, "\u67e5\u8be2\u5931\u8d25"

    return-object v0
.end method

.method protected getApiHost()Ljava/lang/String;
    .locals 1

    const-string v0, "https://product.kakamobi.com"

    return-object v0
.end method

.method protected getSignKey()Ljava/lang/String;
    .locals 1

    const-string v0, "pscELfrL6fmznhWgez"

    return-object v0
.end method
