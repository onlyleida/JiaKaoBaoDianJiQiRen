.class public Lcn/mucang/android/jiakaoyi/signal/utils/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/utils/c;->c:Z

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/utils/c;->a:I

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/utils/c;->b:I

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/utils/c;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/utils/c;->b:I

    .line 2
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/utils/c;->a:I

    if-lt p1, v1, :cond_1

    .line 3
    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/utils/c;->b:I

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/utils/c;->c:Z

    return v0

    .line 5
    :cond_0
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/utils/c;->b:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/utils/c;->b:I

    if-gtz p1, :cond_1

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/utils/c;->b:I

    .line 7
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/utils/c;->c:Z

    return p1

    .line 8
    :cond_1
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/utils/c;->c:Z

    return p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/utils/c;->b:I

    return-void
.end method
