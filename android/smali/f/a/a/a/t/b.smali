.class public Lf/a/a/a/t/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcn/mucang/android/core/api/b;

.field private b:Lf/a/a/a/t/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Lf/a/a/a/t/b;->a()Lf/a/a/a/t/a;

    move-result-object v0

    iput-object v0, p0, Lf/a/a/a/t/b;->b:Lf/a/a/a/t/a;

    .line 3
    new-instance v0, Lcn/mucang/android/core/api/b;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/core/api/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lf/a/a/a/t/b;->a:Lcn/mucang/android/core/api/b;

    return-void
.end method

.method private a()Lf/a/a/a/t/a;
    .locals 2

    .line 1
    new-instance v0, Lf/a/a/a/t/a;

    invoke-direct {v0}, Lf/a/a/a/t/a;-><init>()V

    const v1, 0x4b000

    .line 2
    invoke-virtual {v0, v1}, Lf/a/a/a/t/a;->d(I)V

    const/16 v1, 0x500

    .line 3
    invoke-virtual {v0, v1}, Lf/a/a/a/t/a;->f(I)V

    const/16 v1, 0x2d0

    .line 4
    invoke-virtual {v0, v1}, Lf/a/a/a/t/a;->e(I)V

    return-object v0
.end method

.method private c(Ljava/lang/String;)[B
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/a/t/b;->b:Lf/a/a/a/t/a;

    .line 2
    invoke-virtual {v0}, Lf/a/a/a/t/a;->c()I

    move-result v0

    iget-object v1, p0, Lf/a/a/a/t/b;->b:Lf/a/a/a/t/a;

    invoke-virtual {v1}, Lf/a/a/a/t/a;->b()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcn/mucang/android/core/utils/e;->e(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lf/a/a/a/t/b;->b:Lf/a/a/a/t/a;

    invoke-virtual {v0}, Lf/a/a/a/t/a;->a()I

    move-result v0

    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/e;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public b()Lf/a/a/a/t/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/a/t/b;->b:Lf/a/a/a/t/a;

    return-object v0
.end method

.method public d(Lf/a/a/a/t/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/a/t/b;->b:Lf/a/a/a/t/a;

    return-void
.end method

.method public e(Ljava/lang/String;)Lcn/mucang/android/core/api/ImageUploadResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/a/a/a/t/b;->a:Lcn/mucang/android/core/api/b;

    invoke-direct {p0, p1}, Lf/a/a/a/t/b;->c(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/api/b;->b([B)Lcn/mucang/android/core/api/ImageUploadResult;

    move-result-object p1

    return-object p1
.end method
