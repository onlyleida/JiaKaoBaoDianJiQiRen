.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rJ\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/utils/GearsUtils;",
        "",
        "()V",
        "AUTO_GEARS",
        "",
        "",
        "MANUAL_GEARS",
        "TAG",
        "getTAG",
        "()Ljava/lang/String;",
        "calculateRange",
        "",
        "gearsList",
        "",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;",
        "getDisplayName",
        "gearCategory",
        "gearTypename",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/b;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/b;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/b;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/b;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/b;

    const/16 v0, 0x8

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "\u7a7a\u6321"

    .line 1
    invoke-static {v1, v1}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "1\u6321"

    .line 2
    invoke-static {v2, v2}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const-string v2, "2\u6321"

    .line 3
    invoke-static {v2, v2}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v0, v5

    const-string v2, "3\u6321"

    .line 4
    invoke-static {v2, v2}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v0, v6

    const-string v2, "4\u6321"

    .line 5
    invoke-static {v2, v2}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v0, v7

    const-string v2, "5\u6321"

    .line 6
    invoke-static {v2, v2}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v0, v8

    const-string v2, "6\u6321"

    .line 7
    invoke-static {v2, v2}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v8, 0x6

    aput-object v2, v0, v8

    const-string v2, "\u5012\u6321"

    .line 8
    invoke-static {v2, v2}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/4 v9, 0x7

    aput-object v8, v0, v9

    .line 9
    invoke-static {v0}, Lkotlin/collections/l0;->k([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/b;->b:Ljava/util/Map;

    new-array v0, v7, [Lkotlin/Pair;

    const-string v7, "N\u6321"

    .line 10
    invoke-static {v1, v7}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "P\u6321"

    .line 11
    invoke-static {v1, v1}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "D\u6321"

    .line 12
    invoke-static {v1, v1}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "R\u6321"

    .line 13
    invoke-static {v2, v1}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v6

    .line 14
    invoke-static {v0}, Lkotlin/collections/l0;->k([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/b;->c:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "gearsList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;

    .line 2
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemRangeModel;

    invoke-direct {v2, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemRangeModel;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;

    .line 4
    invoke-static {v4, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5
    invoke-virtual {v1, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;->horiIntersect(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;->vertiIntersect(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 6
    iget v5, v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;->top:I

    iget v6, v4, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;->bottom:I

    if-lt v5, v6, :cond_1

    .line 7
    iget v5, v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemRangeModel;->minTop:I

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemRangeModel;->minTop:I

    .line 8
    :cond_1
    iget v5, v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;->bottom:I

    iget v6, v4, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;->top:I

    if-gt v5, v6, :cond_2

    .line 9
    iget v5, v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemRangeModel;->maxBottom:I

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemRangeModel;->maxBottom:I

    .line 10
    :cond_2
    invoke-virtual {v1, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;->vertiIntersect(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;->horiIntersect(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 11
    iget v5, v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;->left:I

    iget v6, v4, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;->right:I

    if-lt v5, v6, :cond_3

    .line 12
    iget v5, v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemRangeModel;->minLeft:I

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemRangeModel;->minLeft:I

    .line 13
    :cond_3
    iget v5, v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;->right:I

    iget v4, v4, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;->left:I

    if-gt v5, v4, :cond_0

    .line 14
    iget v5, v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemRangeModel;->maxRight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemRangeModel;->maxRight:I

    goto :goto_1

    .line 15
    :cond_4
    iput-object v2, v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;->rangeModel:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemRangeModel;

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const-string v1, "\u81ea\u52a8\u6321"

    .line 1
    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/b;->c:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    const-string v1, "\u624b\u52a8\u6321"

    .line 3
    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/b;->b:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_2
    return-object v0
.end method
