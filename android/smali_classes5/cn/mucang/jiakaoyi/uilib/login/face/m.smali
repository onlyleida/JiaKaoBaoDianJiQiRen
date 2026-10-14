.class public Lcn/mucang/jiakaoyi/uilib/login/face/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lorg/opencv/core/Mat;

.field private b:Lorg/opencv/core/Rect;

.field private c:F

.field private d:F

.field private e:F

.field private f:Landroid/graphics/Bitmap;

.field private g:Lcn/mucang/jiakaoyi/uilib/login/face/q;

.field private h:Z


# direct methods
.method public constructor <init>(Lorg/opencv/core/Mat;Lorg/opencv/core/Rect;FFFLcn/mucang/jiakaoyi/uilib/login/face/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/m;->a:Lorg/opencv/core/Mat;

    .line 3
    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/login/face/m;->b:Lorg/opencv/core/Rect;

    .line 4
    iput p3, p0, Lcn/mucang/jiakaoyi/uilib/login/face/m;->d:F

    .line 5
    iput p4, p0, Lcn/mucang/jiakaoyi/uilib/login/face/m;->c:F

    .line 6
    iput p5, p0, Lcn/mucang/jiakaoyi/uilib/login/face/m;->e:F

    .line 7
    iput-object p6, p0, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g:Lcn/mucang/jiakaoyi/uilib/login/face/q;

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/m;->d:F

    return v0
.end method

.method public b()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/m;->c:F

    return v0
.end method

.method public c()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/m;->e:F

    return v0
.end method

.method public d()Lorg/opencv/core/Mat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/m;->a:Lorg/opencv/core/Mat;

    return-object v0
.end method

.method public e()Lcn/mucang/jiakaoyi/uilib/login/face/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g:Lcn/mucang/jiakaoyi/uilib/login/face/q;

    return-object v0
.end method

.method public f()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/m;->f:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public g()Lorg/opencv/core/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/m;->b:Lorg/opencv/core/Rect;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/m;->h:Z

    return v0
.end method

.method public i(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/m;->h:Z

    return-void
.end method

.method public j(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/m;->f:Landroid/graphics/Bitmap;

    return-void
.end method
