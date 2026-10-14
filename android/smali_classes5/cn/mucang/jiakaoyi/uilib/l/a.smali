.class public Lcn/mucang/jiakaoyi/uilib/l/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/b/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/l/a$b;
    }
.end annotation


# instance fields
.field private final a:Lcn/mucang/jiakaoyi/uilib/l/a$b;

.field private final b:Lcn/mucang/jiakaoyi/uilib/l/a$b;

.field private final c:Lcn/mucang/jiakaoyi/uilib/l/a$b;

.field private final d:Lcn/mucang/jiakaoyi/uilib/l/a$b;

.field private final e:Lcn/mucang/jiakaoyi/uilib/l/a$b;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/l/a$b;

    const-wide/high16 v1, 0x4079000000000000L    # 400.0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/l/a$b;-><init>(DLcn/mucang/jiakaoyi/uilib/l/a$a;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/l/a;->a:Lcn/mucang/jiakaoyi/uilib/l/a$b;

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/l/a$b;

    const-wide v4, 0x405f400000000000L    # 125.0

    invoke-direct {v0, v4, v5, v3}, Lcn/mucang/jiakaoyi/uilib/l/a$b;-><init>(DLcn/mucang/jiakaoyi/uilib/l/a$a;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/l/a;->b:Lcn/mucang/jiakaoyi/uilib/l/a$b;

    .line 4
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/l/a$b;

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/l/a$b;-><init>(DLcn/mucang/jiakaoyi/uilib/l/a$a;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/l/a;->c:Lcn/mucang/jiakaoyi/uilib/l/a$b;

    .line 5
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/l/a$b;

    invoke-direct {v0, v4, v5, v3}, Lcn/mucang/jiakaoyi/uilib/l/a$b;-><init>(DLcn/mucang/jiakaoyi/uilib/l/a$a;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/l/a;->d:Lcn/mucang/jiakaoyi/uilib/l/a$b;

    .line 6
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/l/a$b;

    invoke-direct {v0, v4, v5, v3}, Lcn/mucang/jiakaoyi/uilib/l/a$b;-><init>(DLcn/mucang/jiakaoyi/uilib/l/a$a;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/l/a;->e:Lcn/mucang/jiakaoyi/uilib/l/a$b;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/l/a;->f:Z

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/l/a;->g:Z

    return-void
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 2

    .line 1
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/l/a;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    return-wide v0
.end method

.method private static c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 4

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v0, v0, v0

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/l/a;->a:Lcn/mucang/jiakaoyi/uilib/l/a$b;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/l/a$b;->c()V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/l/a;->b:Lcn/mucang/jiakaoyi/uilib/l/a$b;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/l/a$b;->c()V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/l/a;->c:Lcn/mucang/jiakaoyi/uilib/l/a$b;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/l/a$b;->c()V

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/l/a;->d:Lcn/mucang/jiakaoyi/uilib/l/a$b;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/l/a$b;->c()V

    .line 5
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/l/a;->e:Lcn/mucang/jiakaoyi/uilib/l/a$b;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/l/a$b;->c()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/framework/utils/r0;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/l/a;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/l/a;->f:Z

    const-string v0, "\u5f00\u59cb\u8ba1\u7b97\u5012\u8f66\u706f\u662f\u5426\u53ef\u7528"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :try_start_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/l/a;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_2
    :try_start_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    if-nez v0, :cond_3

    .line 10
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/l/a;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    .line 12
    :cond_3
    :try_start_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 13
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 14
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->ReturnLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v9

    .line 15
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/l/a;->a:Lcn/mucang/jiakaoyi/uilib/l/a$b;

    sget-object v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Forward:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    const/4 v11, 0x1

    if-ne v0, v10, :cond_4

    if-nez v9, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v5

    iget-wide v6, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    const/4 v8, 0x1

    move-object v5, v2

    invoke-virtual/range {v3 .. v8}, Lcn/mucang/jiakaoyi/uilib/l/a$b;->b(ZLcn/mucang/android/jiakaoyi/signal/pos/Pos;JZ)V

    .line 16
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/l/a;->b:Lcn/mucang/jiakaoyi/uilib/l/a$b;

    sget-object v12, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v0, v12, :cond_5

    if-eqz v9, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v5

    iget-wide v6, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    const/4 v8, 0x1

    move-object v5, v2

    invoke-virtual/range {v3 .. v8}, Lcn/mucang/jiakaoyi/uilib/l/a$b;->b(ZLcn/mucang/android/jiakaoyi/signal/pos/Pos;JZ)V

    .line 17
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/l/a;->c:Lcn/mucang/jiakaoyi/uilib/l/a$b;

    if-ne v0, v10, :cond_6

    if-eqz v9, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v5

    iget-wide v6, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    const/4 v8, 0x1

    move-object v5, v2

    invoke-virtual/range {v3 .. v8}, Lcn/mucang/jiakaoyi/uilib/l/a$b;->b(ZLcn/mucang/android/jiakaoyi/signal/pos/Pos;JZ)V

    .line 18
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/l/a;->d:Lcn/mucang/jiakaoyi/uilib/l/a$b;

    if-ne v0, v12, :cond_7

    if-nez v9, :cond_7

    const/4 v4, 0x1

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    :goto_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v6, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    const/4 v8, 0x1

    move-object v5, v2

    invoke-virtual/range {v3 .. v8}, Lcn/mucang/jiakaoyi/uilib/l/a$b;->b(ZLcn/mucang/android/jiakaoyi/signal/pos/Pos;JZ)V

    .line 19
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/h/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 20
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/l/a;->d()V

    .line 21
    :cond_8
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/l/a;->c:Lcn/mucang/jiakaoyi/uilib/l/a$b;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/l/a$b;->a(Lcn/mucang/jiakaoyi/uilib/l/a$b;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/l/a;->d:Lcn/mucang/jiakaoyi/uilib/l/a$b;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/l/a$b;->a(Lcn/mucang/jiakaoyi/uilib/l/a$b;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 22
    :cond_9
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/l/a;->g:Z

    if-nez p1, :cond_b

    .line 23
    :cond_a
    iput-boolean v11, p0, Lcn/mucang/jiakaoyi/uilib/l/a;->g:Z

    .line 24
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    .line 25
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5012\u8f66\u706f\u72b6\u6001\u4e0d\u53ef\u7528:\u524d\u8fdb\u4e14\u706f\u4eae="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/l/a;->c:Lcn/mucang/jiakaoyi/uilib/l/a$b;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/l/a$b;->a(Lcn/mucang/jiakaoyi/uilib/l/a$b;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",\u540e\u9000\u4e14\u706f\u4e0d\u4eae="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/l/a;->d:Lcn/mucang/jiakaoyi/uilib/l/a$b;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/l/a$b;->a(Lcn/mucang/jiakaoyi/uilib/l/a$b;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 26
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/l/a;->d()V

    .line 27
    :cond_c
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/l/a;->a:Lcn/mucang/jiakaoyi/uilib/l/a$b;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/l/a$b;->a(Lcn/mucang/jiakaoyi/uilib/l/a$b;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/l/a;->b:Lcn/mucang/jiakaoyi/uilib/l/a$b;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/l/a$b;->a(Lcn/mucang/jiakaoyi/uilib/l/a$b;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 28
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/l/a;->g:Z

    if-nez p1, :cond_e

    .line 29
    :cond_d
    iput-boolean v11, p0, Lcn/mucang/jiakaoyi/uilib/l/a;->g:Z

    .line 30
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u5012\u8f66\u706f\u72b6\u6001\u53ef\u7528:\u524d\u8fdb\u4e14\u706f\u4e0d\u4eae="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/l/a;->a:Lcn/mucang/jiakaoyi/uilib/l/a$b;

    invoke-static {p2}, Lcn/mucang/jiakaoyi/uilib/l/a$b;->a(Lcn/mucang/jiakaoyi/uilib/l/a$b;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",\u540e\u9000\u4e14\u706f\u4eae="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/l/a;->b:Lcn/mucang/jiakaoyi/uilib/l/a$b;

    invoke-static {p2}, Lcn/mucang/jiakaoyi/uilib/l/a$b;->a(Lcn/mucang/jiakaoyi/uilib/l/a$b;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 32
    :cond_e
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/l/a;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 33
    :cond_f
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
