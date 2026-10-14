.class public abstract Lcn/mucang/android/core/location/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcn/mucang/android/core/location/MucangLocateOption;


# direct methods
.method public constructor <init>(Lcn/mucang/android/core/location/MucangLocateOption;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/core/location/e;->a:Lcn/mucang/android/core/location/MucangLocateOption;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method protected abstract b(J)Lcn/mucang/android/core/location/c;
.end method

.method public final c()Lcn/mucang/android/core/location/c;
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/u;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/location/e;->a:Lcn/mucang/android/core/location/MucangLocateOption;

    invoke-virtual {v0}, Lcn/mucang/android/core/location/MucangLocateOption;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/core/location/e;->b(J)Lcn/mucang/android/core/location/c;

    move-result-object v0

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4f7f\u7528"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/core/location/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5b9a\u4f4d mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/core/location/e;->a:Lcn/mucang/android/core/location/MucangLocateOption;

    invoke-virtual {v2}, Lcn/mucang/android/core/location/MucangLocateOption;->b()Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :cond_0
    const-string v1, "MucangLocateClient"

    if-eqz v0, :cond_1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/core/location/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-\u5b9a\u4f4d\u6210\u529f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/core/location/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lf/a/a/a/c;->l(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/core/location/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-\u5b9a\u4f4d\u5931\u8d25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/core/location/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lf/a/a/a/c;->l(Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "LocationUtils.requestLocation \u5fc5\u987b\u5728\u975eUI\u7ebf\u7a0b\u4e0a\u8c03\u7528"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected d(Lcn/mucang/android/core/location/c;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/core/location/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "0"

    const-string v3, "1"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/core/location/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/core/location/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v2

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/core/location/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v2

    goto :goto_3

    :cond_3
    move-object v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/core/location/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    move-object v2, v3

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "11111"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "core"

    if-eqz v1, :cond_5

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/core/location/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5b9a\u4f4d\u6570\u636e\u6b63\u5e38"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcn/mucang/android/core/location/c;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p1}, Lcn/mucang/android/core/location/c;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1}, Lcn/mucang/android/core/location/c;->d()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    .line 10
    invoke-static {v6, v0, v1}, Lf/a/a/a/c;->j(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5

    .line 11
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/core/location/e;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u5b9a\u4f4d\u6570\u636e\u5f02\u5e38"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcn/mucang/android/core/location/c;->g()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {p1}, Lcn/mucang/android/core/location/c;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-virtual {p1}, Lcn/mucang/android/core/location/c;->d()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v3

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v2

    .line 14
    invoke-static {v6, v1, v7}, Lf/a/a/a/c;->j(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :goto_5
    return-void
.end method
