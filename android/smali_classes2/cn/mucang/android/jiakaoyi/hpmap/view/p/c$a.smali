.class public Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;
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

.field public e:Ljava/lang/String;

.field public f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public g:F

.field public h:Z

.field public i:F

.field public j:F


# direct methods
.method public constructor <init>(FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41f00000    # 30.0f

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;->j:F

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;->c:F

    .line 4
    iput p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;->d:I

    const/high16 p1, 0x41600000    # 14.0f

    .line 5
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;->g:F

    return-void
.end method


# virtual methods
.method public a(FF)Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;->h:Z

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;->i:F

    .line 3
    iput p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;->j:F

    return-object p0
.end method

.method public b(FI)Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;->a:F

    .line 2
    iput p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;->b:I

    return-object p0
.end method
