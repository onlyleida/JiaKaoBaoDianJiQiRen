.class public Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[J

.field private b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;

.field private c:I

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;->d:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;->c:I

    const/16 v0, 0x8

    new-array v0, v0, [J

    .line 4
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;->a:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x7d0
        0x1f4
        0x7d0
        0x1f4
        0x3e8
        0x1f4
        0x3e8
        0x1f4
    .end array-data
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;

    return-object p0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;->d:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;->c:I

    return p0
.end method

.method static synthetic d(Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;)I
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;->c:I

    return v0
.end method

.method static synthetic e(Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;)[J
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;->a:[J

    return-object p0
.end method


# virtual methods
.method public f(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;->c:I

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;->d:Ljava/lang/Runnable;

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
