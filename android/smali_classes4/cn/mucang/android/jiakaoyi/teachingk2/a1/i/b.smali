.class public Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

.field public final b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public final c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public final d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;


# direct methods
.method public constructor <init>()V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    const-wide v2, 0x4076700000000000L    # 359.0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    new-instance v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    new-instance v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    const-wide v9, 0x4076700000000000L    # 359.0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    return p1
.end method

.method public b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;

    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    return p1
.end method
