.class public Lcn/mucang/android/core/db/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/core/db/e;->b:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcn/mucang/android/core/db/e;->a:Ljava/lang/String;

    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/core/db/e;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/db/e;-><init>(Ljava/lang/String;)V

    .line 2
    array-length p0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, p1, v1

    .line 3
    invoke-virtual {v0, v2}, Lcn/mucang/android/core/db/e;->b(Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcn/mucang/android/core/db/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcn/mucang/android/core/db/e;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/db/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcn/mucang/android/core/db/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/db/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c()Lcn/mucang/android/core/db/e;
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/core/db/e;

    iget-object v1, p0, Lcn/mucang/android/core/db/e;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcn/mucang/android/core/db/e;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/mucang/android/core/db/e;->b:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcn/mucang/android/core/db/e;->b:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/db/e;->c()Lcn/mucang/android/core/db/e;

    move-result-object v0

    return-object v0
.end method

.method public e()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/db/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/db/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/core/db/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcn/mucang/android/core/db/e;->b:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " | "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/core/db/e;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
