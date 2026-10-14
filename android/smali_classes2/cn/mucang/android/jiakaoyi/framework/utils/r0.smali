.class public Lcn/mucang/android/jiakaoyi/framework/utils/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Class;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/Class;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->d:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->c:Ljava/lang/Class;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->e:Ljava/lang/Class;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TC;",
            "Ljava/lang/Class<",
            "TC;>;",
            "Ljava/lang/Class;",
            ")",
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "TC;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method private c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->d:Ljava/lang/String;

    const-string v1, "site_model_data_list"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Boolean;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;F)Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-class v0, Ljava/lang/Float;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;I)Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-class v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Ljava/lang/Class;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class;",
            ")",
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized b()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->a:Ljava/lang/Object;

    if-nez v0, :cond_9

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->c:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->d:Ljava/lang/String;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->a:Ljava/lang/Object;

    goto/16 :goto_1

    .line 4
    :cond_0
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->d:Ljava/lang/String;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->c(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->a:Ljava/lang/Object;

    goto/16 :goto_1

    .line 6
    :cond_1
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->d:Ljava/lang/String;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->a:Ljava/lang/Object;

    goto/16 :goto_1

    .line 8
    :cond_2
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_3

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->d:Ljava/lang/String;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->a:Ljava/lang/Object;

    goto :goto_1

    .line 10
    :cond_3
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_4

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->d:Ljava/lang/String;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->f(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_8

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->d:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 14
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b:Ljava/lang/Object;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->a:Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->e:Ljava/lang/Class;

    if-eqz v1, :cond_6

    .line 16
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->a:Ljava/lang/Object;

    goto :goto_0

    .line 17
    :cond_6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->c:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->a:Ljava/lang/Object;

    .line 18
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u521d\u59cb\u5316: key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 20
    :cond_7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 21
    :cond_8
    :goto_1
    :try_start_1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u521d\u59cb\u5316: key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 23
    :cond_9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bbe\u7f6e: key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , oldValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->a:Ljava/lang/Object;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->c:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->d:Ljava/lang/String;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->k(Ljava/lang/String;I)V

    goto :goto_0

    .line 6
    :cond_1
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->d:Ljava/lang/String;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->j(Ljava/lang/String;F)V

    goto :goto_0

    .line 8
    :cond_2
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_3

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->d:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_3
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_4

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->d:Ljava/lang/String;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->i(Ljava/lang/String;Z)V

    goto :goto_0

    .line 12
    :cond_4
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_5

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->d:Ljava/lang/String;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->l(Ljava/lang/String;J)V

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_7

    if-nez p1, :cond_6

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->d:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_7
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
