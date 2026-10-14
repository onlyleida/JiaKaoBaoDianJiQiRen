.class public Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;
.super Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/hpmap/view/p/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public f:F

.field public g:F


# direct methods
.method public constructor <init>(FI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;-><init>(FI)V

    const/high16 p1, 0x41f00000    # 30.0f

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;->f:F

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;->g:F

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;->e(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;

    return-object p0
.end method

.method public bridge synthetic b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;

    return-object p0
.end method

.method public c(F)Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;->g:F

    return-object p0
.end method

.method public d(F)Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;->f:F

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object p0
.end method
