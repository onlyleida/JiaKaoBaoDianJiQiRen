.class public abstract Lcn/mucang/android/core/api/cache/impl/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/api/cache/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/api/cache/impl/e$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    :goto_0
    if-ge v4, v1, :cond_5

    .line 3
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v6, v3, :cond_0

    const/16 v9, 0x3f

    if-ne v8, v9, :cond_4

    move v6, v4

    goto :goto_1

    :cond_0
    const/16 v9, 0x26

    if-ne v8, v9, :cond_2

    if-eq v5, v3, :cond_1

    if-eq v7, v3, :cond_1

    .line 4
    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v7, v7, 0x1

    .line 5
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 6
    invoke-virtual {p0, v5}, Lcn/mucang/android/core/api/cache/impl/e;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 7
    new-instance v8, Lcn/mucang/android/core/api/cache/impl/e$a;

    invoke-direct {v8, v5, v7}, Lcn/mucang/android/core/api/cache/impl/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v5, -0x1

    const/4 v7, -0x1

    goto :goto_1

    :cond_2
    const/16 v9, 0x3d

    if-ne v8, v9, :cond_3

    move v7, v4

    goto :goto_1

    :cond_3
    if-ne v5, v3, :cond_4

    move v5, v4

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    const-string v1, ""

    if-eq v5, v3, :cond_7

    if-eq v7, v3, :cond_6

    .line 8
    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v7, v7, 0x1

    .line 9
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 10
    :cond_6
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    .line 11
    :goto_2
    invoke-virtual {p0, v4}, Lcn/mucang/android/core/api/cache/impl/e;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 12
    new-instance v7, Lcn/mucang/android/core/api/cache/impl/e$a;

    invoke-direct {v7, v4, v5}, Lcn/mucang/android/core/api/cache/impl/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_7
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-ne v6, v3, :cond_8

    goto :goto_3

    .line 14
    :cond_8
    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 15
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/encode/Digests;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract b(Ljava/lang/String;)Z
.end method
