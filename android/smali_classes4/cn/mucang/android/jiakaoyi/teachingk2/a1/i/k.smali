.class public Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/k;->a:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)Z
    .locals 9

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/k;->a:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->length()D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double v3, v3, v5

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    div-double/2addr v3, v7

    invoke-static {v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/k;->a:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->length()D

    move-result-wide v3

    mul-double v3, v3, v5

    div-double/2addr v3, v7

    invoke-static {v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 4
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
