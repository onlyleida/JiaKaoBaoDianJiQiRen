.class public Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Z

.field public c:I

.field public d:I

.field public final e:I

.field public f:I

.field public g:I

.field public final h:I

.field public final i:I

.field public final j:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(IZIIIIIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a:I

    .line 3
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->b:Z

    .line 4
    iput p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->c:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->d:I

    .line 6
    iput p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->e:I

    .line 7
    iput p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->f:I

    .line 8
    iput p6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->g:I

    .line 9
    iput p7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->h:I

    .line 10
    iput p8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->i:I

    .line 11
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->j:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
