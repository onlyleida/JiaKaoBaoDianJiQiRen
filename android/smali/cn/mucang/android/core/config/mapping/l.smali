.class public final Lcn/mucang/android/core/config/mapping/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/config/y/b;
.implements Lcn/mucang/android/core/config/y/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u001c\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002J\u000e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/android/core/config/mapping/ProfileYourProvider;",
        "Lcn/mucang/android/core/config/your/YourViewCategoryProvider;",
        "Lcn/mucang/android/core/config/your/YourViewCategoryAddedTopTop;",
        "()V",
        "categoryName",
        "",
        "changeProfileTo",
        "",
        "profiles",
        "",
        "Lcn/mucang/android/core/config/mapping/ProfileJsonData;",
        "position",
        "",
        "createItemProvider",
        "",
        "Lcn/mucang/android/core/config/your/YourViewItemProvider;",
        "itemProviders",
        "core-lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/config/y/c;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/mapping/k;->c()Ljava/util/List;

    move-result-object v0

    .line 2
    sget-object v1, Lcn/mucang/android/core/config/mapping/k;->a:Lcn/mucang/android/core/config/mapping/k;

    invoke-virtual {v1}, Lcn/mucang/android/core/config/mapping/k;->b()Ljava/lang/Long;

    move-result-object v1

    .line 3
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 5
    check-cast v6, Lcn/mucang/android/core/config/mapping/ProfileJsonData;

    .line 6
    invoke-virtual {v6}, Lcn/mucang/android/core/config/mapping/ProfileJsonData;->getId()J

    move-result-wide v9

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v6, v9, v11

    if-nez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, -0x1

    :goto_3
    iput v5, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-ne v5, v7, :cond_4

    .line 7
    iput v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :cond_4
    new-array v1, v8, [Lcn/mucang/android/core/config/y/c;

    .line 8
    new-instance v3, Lcn/mucang/android/core/config/mapping/l$a;

    invoke-direct {v3, v2, p0, v0}, Lcn/mucang/android/core/config/mapping/l$a;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcn/mucang/android/core/config/mapping/l;Ljava/util/List;)V

    aput-object v3, v1, v4

    invoke-static {v1}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/config/y/c;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/config/mapping/l;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "\u7f51\u7edc\u5207\u6362"

    return-object v0
.end method

.method public final c(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/config/mapping/ProfileJsonData;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "profiles"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u66f4\u6539\u5931\u8d25\uff0c\u6ca1\u6709profile\u53ef\u7528"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1, p2}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/core/config/mapping/ProfileJsonData;

    if-nez p2, :cond_1

    .line 4
    invoke-static {p1}, Lkotlin/collections/s;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcn/mucang/android/core/config/mapping/ProfileJsonData;

    .line 5
    :cond_1
    sget-object p1, Lcn/mucang/android/core/config/mapping/k;->a:Lcn/mucang/android/core/config/mapping/k;

    const/4 v0, 0x0

    if-nez p2, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcn/mucang/android/core/config/mapping/ProfileJsonData;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Lcn/mucang/android/core/config/mapping/k;->h(Ljava/lang/Long;)V

    if-nez p2, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {p2}, Lcn/mucang/android/core/config/mapping/ProfileJsonData;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string p1, "\u7f51\u7edc\u5207\u6362\u81f3:"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method
