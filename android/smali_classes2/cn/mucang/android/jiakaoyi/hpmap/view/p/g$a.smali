.class public Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/hpmap/view/p/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:F

.field public b:I

.field public c:F

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public h:F

.field public i:Z


# direct methods
.method public constructor <init>(FII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;->c:F

    .line 3
    iput p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;->d:I

    .line 4
    iput p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;->e:I

    const/high16 p1, 0x41600000    # 14.0f

    .line 5
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;->h:F

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object p0
.end method

.method public c(Z)Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;->i:Z

    return-object p0
.end method

.method public d(FI)Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;->a:F

    .line 2
    iput p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;->b:I

    return-object p0
.end method
