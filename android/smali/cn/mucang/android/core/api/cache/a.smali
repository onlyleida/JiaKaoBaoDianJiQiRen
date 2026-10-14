.class public Lcn/mucang/android/core/api/cache/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/mucang/android/core/api/ApiResponse;

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/core/api/ApiResponse;JJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/mucang/android/core/api/cache/a;->a:Lcn/mucang/android/core/api/ApiResponse;

    .line 4
    iput-wide p2, p0, Lcn/mucang/android/core/api/cache/a;->b:J

    .line 5
    iput-wide p4, p0, Lcn/mucang/android/core/api/cache/a;->c:J

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->getJsonObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string p2, "eTag"

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/api/cache/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcn/mucang/android/core/api/ApiResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/a;->a:Lcn/mucang/android/core/api/ApiResponse;

    return-object v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/core/api/cache/a;->c:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/core/api/cache/a;->b:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e(Lcn/mucang/android/core/api/ApiResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/cache/a;->a:Lcn/mucang/android/core/api/ApiResponse;

    return-void
.end method

.method public f(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/core/api/cache/a;->c:J

    return-void
.end method

.method public g(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/core/api/cache/a;->b:J

    return-void
.end method
