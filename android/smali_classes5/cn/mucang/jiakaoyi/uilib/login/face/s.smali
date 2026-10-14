.class public final Lcn/mucang/jiakaoyi/uilib/login/face/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/login/face/OpencvHelper;",
        "",
        "()V",
        "formatMat",
        "",
        "rect",
        "Lorg/opencv/core/Rect;",
        "maxWidth",
        "",
        "maxHeight",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/jiakaoyi/uilib/login/face/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/face/s;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/login/face/s;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/login/face/s;->a:Lcn/mucang/jiakaoyi/uilib/login/face/s;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/opencv/core/Rect;II)Z
    .locals 4

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Lorg/opencv/core/Rect;->x:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 2
    iget v2, p1, Lorg/opencv/core/Rect;->width:I

    add-int/2addr v2, v0

    iput v2, p1, Lorg/opencv/core/Rect;->width:I

    .line 3
    iput v1, p1, Lorg/opencv/core/Rect;->x:I

    .line 4
    :cond_0
    iget v0, p1, Lorg/opencv/core/Rect;->x:I

    iget v2, p1, Lorg/opencv/core/Rect;->width:I

    add-int/2addr v2, v0

    if-le v2, p2, :cond_1

    .line 5
    invoke-static {v0, p2}, Lkotlin/a0/d;->e(II)I

    move-result v0

    iput v0, p1, Lorg/opencv/core/Rect;->x:I

    sub-int v0, p2, v0

    .line 6
    iput v0, p1, Lorg/opencv/core/Rect;->width:I

    .line 7
    :cond_1
    iget v0, p1, Lorg/opencv/core/Rect;->width:I

    rem-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    sub-int/2addr v0, v3

    const/4 v2, 0x2

    .line 8
    invoke-static {v0, v2}, Lkotlin/a0/d;->b(II)I

    move-result v0

    iput v0, p1, Lorg/opencv/core/Rect;->width:I

    .line 9
    :cond_2
    iget v0, p1, Lorg/opencv/core/Rect;->y:I

    if-gez v0, :cond_3

    .line 10
    iget v2, p1, Lorg/opencv/core/Rect;->height:I

    add-int/2addr v2, v0

    iput v2, p1, Lorg/opencv/core/Rect;->height:I

    .line 11
    iput v1, p1, Lorg/opencv/core/Rect;->y:I

    .line 12
    :cond_3
    iget v0, p1, Lorg/opencv/core/Rect;->y:I

    iget v2, p1, Lorg/opencv/core/Rect;->height:I

    add-int/2addr v2, v0

    if-le v2, p3, :cond_4

    .line 13
    invoke-static {v0, p3}, Lkotlin/a0/d;->e(II)I

    move-result v0

    iput v0, p1, Lorg/opencv/core/Rect;->y:I

    sub-int v0, p3, v0

    .line 14
    iput v0, p1, Lorg/opencv/core/Rect;->height:I

    .line 15
    :cond_4
    iget v0, p1, Lorg/opencv/core/Rect;->height:I

    rem-int/lit8 v2, v0, 0x3

    if-eqz v2, :cond_5

    .line 16
    rem-int/lit8 v2, v0, 0x3

    sub-int/2addr v0, v2

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lkotlin/a0/d;->b(II)I

    move-result v0

    iput v0, p1, Lorg/opencv/core/Rect;->height:I

    .line 17
    :cond_5
    iget v0, p1, Lorg/opencv/core/Rect;->x:I

    if-ltz v0, :cond_6

    iget v2, p1, Lorg/opencv/core/Rect;->width:I

    if-lez v2, :cond_6

    add-int/2addr v0, v2

    if-gt v0, p2, :cond_6

    .line 18
    iget p2, p1, Lorg/opencv/core/Rect;->y:I

    if-ltz p2, :cond_6

    iget p1, p1, Lorg/opencv/core/Rect;->height:I

    if-lez p1, :cond_6

    add-int/2addr p2, p1

    if-gt p2, p3, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method
