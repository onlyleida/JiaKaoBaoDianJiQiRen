.class public Lcn/mucang/android/jiakaoyi/signal/center/model/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/e;


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

.field private final b:Lcn/mucang/android/jiakaoyi/signal/center/model/b;

.field private final c:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

.field private final d:Lcn/mucang/android/jiakaoyi/signal/center/model/c;

.field private final e:Lcn/mucang/android/jiakaoyi/signal/ai/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->a:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->c:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/center/model/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/c;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d:Lcn/mucang/android/jiakaoyi/signal/center/model/c;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/ai/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/ai/a;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->e:Lcn/mucang/android/jiakaoyi/signal/ai/a;

    return-void
.end method

.method public static e(Lcn/mucang/android/jiakaoyi/signal/center/model/d;)Lcn/mucang/android/jiakaoyi/signal/center/model/d;
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/center/model/d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;-><init>()V

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->g(Lcn/mucang/android/jiakaoyi/signal/center/model/d;Lcn/mucang/android/jiakaoyi/signal/center/model/d;)Lcn/mucang/android/jiakaoyi/signal/center/model/d;

    return-object v0
.end method

.method public static g(Lcn/mucang/android/jiakaoyi/signal/center/model/d;Lcn/mucang/android/jiakaoyi/signal/center/model/d;)Lcn/mucang/android/jiakaoyi/signal/center/model/d;
    .locals 2

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->a:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->a:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)V

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a(Lcn/mucang/android/jiakaoyi/signal/center/model/b;Lcn/mucang/android/jiakaoyi/signal/center/model/b;)V

    .line 3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d:Lcn/mucang/android/jiakaoyi/signal/center/model/c;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d:Lcn/mucang/android/jiakaoyi/signal/center/model/c;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->a(Lcn/mucang/android/jiakaoyi/signal/center/model/c;Lcn/mucang/android/jiakaoyi/signal/center/model/c;)V

    .line 4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->c:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->c:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->set(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V

    .line 5
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->e:Lcn/mucang/android/jiakaoyi/signal/ai/a;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->e:Lcn/mucang/android/jiakaoyi/signal/ai/a;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/ai/a;->a(Lcn/mucang/android/jiakaoyi/signal/ai/a;)V

    return-object p1
.end method


# virtual methods
.method public a()Lcn/mucang/android/jiakaoyi/signal/ai/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->e:Lcn/mucang/android/jiakaoyi/signal/ai/a;

    return-object v0
.end method

.method public b()Lcn/mucang/android/jiakaoyi/signal/center/model/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d:Lcn/mucang/android/jiakaoyi/signal/center/model/c;

    return-object v0
.end method

.method public c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->c:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    return-object v0
.end method

.method public d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->a:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    return-object v0
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->a:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    const/4 v1, 0x0

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    .line 2
    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->m()V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d:Lcn/mucang/android/jiakaoyi/signal/center/model/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->e()V

    return-void
.end method

.method public getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    return-object v0
.end method
