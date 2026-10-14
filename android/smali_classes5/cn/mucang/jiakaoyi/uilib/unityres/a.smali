.class public Lcn/mucang/jiakaoyi/uilib/unityres/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/unityres/a$b;
    }
.end annotation


# static fields
.field public static a:I = 0x1

.field public static b:I = 0x2

.field public static final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/unityres/a$a;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/unityres/a$a;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/unityres/a;->c:Landroid/util/SparseArray;

    const/16 v0, 0x65

    .line 2
    sput v0, Lcn/mucang/jiakaoyi/uilib/unityres/a;->d:I

    return-void
.end method

.method public static a(ZZ)Ljava/util/List;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;-><init>()V

    .line 3
    sget v2, Lcn/mucang/jiakaoyi/uilib/unityres/a;->a:I

    iput v2, v1, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;->type:I

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->i()I

    move-result v2

    iput v2, v1, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;->version:I

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->f()I

    move-result v2

    iput v2, v1, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;->hardwarePlatform:I

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p0, :cond_0

    .line 7
    new-instance p0, Lcn/mucang/jiakaoyi/uilib/upgrade/d;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/upgrade/d;-><init>()V

    invoke-virtual {p0, v0}, Lcn/mucang/jiakaoyi/uilib/upgrade/d;->n(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_3

    :cond_0
    if-eqz p1, :cond_1

    .line 8
    new-instance p0, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;-><init>()V

    .line 9
    sget p1, Lcn/mucang/jiakaoyi/uilib/unityres/a;->b:I

    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;->type:I

    .line 10
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->h()I

    move-result p1

    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;->version:I

    .line 11
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance p0, Lcn/mucang/jiakaoyi/uilib/upgrade/d;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/upgrade/d;-><init>()V

    invoke-virtual {p0, v0}, Lcn/mucang/jiakaoyi/uilib/upgrade/d;->n(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_3

    .line 13
    :cond_1
    sget-object p0, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class p1, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;

    if-eqz p0, :cond_3

    .line 14
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;->useNonOldProtocol()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    .line 15
    :goto_0
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/unityres/a;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p0, v1, :cond_6

    .line 16
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;-><init>()V

    .line 17
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 18
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    iput p1, v1, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;->type:I

    .line 19
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->l(I)I

    move-result p1

    iput p1, v1, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;->version:I

    .line 20
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->k(I)I

    move-result p1

    iput p1, v1, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;->hardwarePlatform:I

    .line 21
    iget p1, v1, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;->version:I

    if-lez p1, :cond_2

    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 23
    :cond_3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->c()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    .line 24
    :cond_4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->b()I

    move-result p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->parse(I)Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 25
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->hasOBD()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 26
    new-instance p0, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;-><init>()V

    .line 27
    sget p1, Lcn/mucang/jiakaoyi/uilib/unityres/a;->b:I

    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;->type:I

    .line 28
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->h()I

    move-result p1

    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;->version:I

    .line 29
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 30
    :cond_5
    :goto_1
    new-instance p0, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;-><init>()V

    const/4 p1, 0x7

    .line 31
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;->type:I

    .line 32
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->l(I)I

    move-result v1

    iput v1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;->version:I

    .line 33
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->k(I)I

    move-result p1

    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;->hardwarePlatform:I

    .line 34
    iget p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;->version:I

    if-lez p1, :cond_6

    .line 35
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_6
    :goto_2
    new-instance p0, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;-><init>()V

    .line 37
    sget p1, Lcn/mucang/jiakaoyi/uilib/unityres/a;->d:I

    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;->type:I

    .line 38
    invoke-static {}, Lcn/mucang/android/core/utils/o0;->t()I

    move-result p1

    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/model/UpgradeParameterV2;->version:I

    .line 39
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance p0, Lcn/mucang/jiakaoyi/uilib/upgrade/d;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/upgrade/d;-><init>()V

    invoke-virtual {p0, v0}, Lcn/mucang/jiakaoyi/uilib/upgrade/d;->m(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 41
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    .line 42
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getType()I

    move-result v1

    sget v2, Lcn/mucang/jiakaoyi/uilib/unityres/a;->d:I

    if-ne v1, v2, :cond_7

    .line 43
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :cond_8
    :goto_3
    return-object p0
.end method
