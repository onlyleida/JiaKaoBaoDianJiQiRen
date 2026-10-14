.class public Lcn/mucang/android/jiakaoyi/hpmap/view/p/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:F

.field public b:I

.field public c:Z

.field public d:F

.field public e:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41700000    # 15.0f

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f$a;->a:F

    const/high16 v0, 0x41f00000    # 30.0f

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f$a;->e:F

    return-void
.end method


# virtual methods
.method public a(FF)Lcn/mucang/android/jiakaoyi/hpmap/view/p/f$a;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f$a;->c:Z

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f$a;->d:F

    .line 3
    iput p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f$a;->e:F

    return-object p0
.end method

.method public b(FI)Lcn/mucang/android/jiakaoyi/hpmap/view/p/f$a;
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f$a;->a:F

    .line 2
    iput p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f$a;->b:I

    return-object p0
.end method
