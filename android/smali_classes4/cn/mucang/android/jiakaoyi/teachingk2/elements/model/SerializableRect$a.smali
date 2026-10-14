.class public final Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\u0008\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect$Companion;",
        "",
        "()V",
        "createDefaultRect",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;",
        "step",
        "",
        "subStep",
        "inputStringToRect",
        "input",
        "",
        "TeachingK2_release"
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
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;
    .locals 5

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0x64

    const/16 v4, 0x19

    if-ne p1, v0, :cond_2

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_0

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;

    const/16 p2, 0x14

    invoke-direct {p1, v4, p2, v4, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;-><init>(IIII)V

    return-object p1

    .line 3
    :cond_1
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;

    invoke-direct {p1, v4, v3, v4, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;-><init>(IIII)V

    return-object p1

    .line 4
    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p1, v0, :cond_5

    if-eq p2, v2, :cond_4

    if-eq p2, v1, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;

    const/16 p2, 0x32

    invoke-direct {p1, v4, v3, v4, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;-><init>(IIII)V

    return-object p1

    .line 6
    :cond_4
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;

    const/16 p2, 0x1e

    invoke-direct {p1, p2, v3, p2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;-><init>(IIII)V

    return-object p1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;
    .locals 9

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;-><init>()V

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const-string v1, ","

    .line 3
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lkotlin/text/l;->p0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    return-object v0

    :cond_2
    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 4
    fill-array-data v2, :array_0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    if-ltz v3, :cond_7

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    add-int/lit8 v7, v5, 0x1

    .line 6
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 7
    invoke-static {v5}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    if-ge v6, v1, :cond_5

    .line 8
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_4

    const/16 v8, 0x1f4

    if-gt v5, v8, :cond_4

    .line 9
    aput v5, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u8bf7\u8f93\u51650-500\u7684\u6574\u6570"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    if-le v7, v3, :cond_6

    goto :goto_3

    :cond_6
    move v5, v7

    goto :goto_1

    .line 11
    :cond_7
    :goto_3
    aget p1, v2, v4

    const/4 v1, 0x1

    aget v1, v2, v1

    const/4 v3, 0x2

    aget v3, v2, v3

    const/4 v4, 0x3

    aget v2, v2, v4

    invoke-virtual {v0, p1, v1, v3, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;->set(IIII)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
