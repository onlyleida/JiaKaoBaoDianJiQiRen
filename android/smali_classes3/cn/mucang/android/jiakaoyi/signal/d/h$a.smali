.class public Lcn/mucang/android/jiakaoyi/signal/d/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/h$a;->a:F

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/h$a;->b:F

    return-void
.end method


# virtual methods
.method public a()Lcn/mucang/android/jiakaoyi/signal/d/h;
    .locals 10

    .line 1
    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/d/h;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/d/h$a;->a:F

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/d/h$a;->b:F

    iget-boolean v3, p0, Lcn/mucang/android/jiakaoyi/signal/d/h$a;->c:Z

    iget-boolean v4, p0, Lcn/mucang/android/jiakaoyi/signal/d/h$a;->d:Z

    iget-boolean v5, p0, Lcn/mucang/android/jiakaoyi/signal/d/h$a;->e:Z

    iget-boolean v6, p0, Lcn/mucang/android/jiakaoyi/signal/d/h$a;->f:Z

    iget-boolean v7, p0, Lcn/mucang/android/jiakaoyi/signal/d/h$a;->g:Z

    iget-boolean v8, p0, Lcn/mucang/android/jiakaoyi/signal/d/h$a;->h:Z

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/signal/d/h;-><init>(FFZZZZZZ)V

    return-object v9
.end method

.method public b(Z)Lcn/mucang/android/jiakaoyi/signal/d/h$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/d/h$a;->g:Z

    return-object p0
.end method

.method public c(Z)Lcn/mucang/android/jiakaoyi/signal/d/h$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/d/h$a;->c:Z

    return-object p0
.end method

.method public d(Z)Lcn/mucang/android/jiakaoyi/signal/d/h$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/d/h$a;->e:Z

    return-object p0
.end method

.method public e(F)Lcn/mucang/android/jiakaoyi/signal/d/h$a;
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/d/h$a;->b:F

    return-object p0
.end method

.method public f(F)Lcn/mucang/android/jiakaoyi/signal/d/h$a;
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/d/h$a;->a:F

    return-object p0
.end method

.method public g(Z)Lcn/mucang/android/jiakaoyi/signal/d/h$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/d/h$a;->f:Z

    return-object p0
.end method

.method public h(Z)Lcn/mucang/android/jiakaoyi/signal/d/h$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/d/h$a;->d:Z

    return-object p0
.end method

.method public i(Z)Lcn/mucang/android/jiakaoyi/signal/d/h$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/d/h$a;->h:Z

    return-object p0
.end method
