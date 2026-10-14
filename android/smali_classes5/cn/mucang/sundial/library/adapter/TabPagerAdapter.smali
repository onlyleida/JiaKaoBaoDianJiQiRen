.class public final Lcn/mucang/sundial/library/adapter/TabPagerAdapter;
.super Landroidx/fragment/app/s;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\r\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001d\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\"\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u00040\u00138\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcn/mucang/sundial/library/adapter/TabPagerAdapter;",
        "Landroidx/fragment/app/s;",
        "",
        "position",
        "Lcn/mucang/sundial/library/entity/TabEntity;",
        "Landroidx/fragment/app/Fragment;",
        "getItemData",
        "(I)Lcn/mucang/sundial/library/entity/TabEntity;",
        "getItem",
        "(I)Landroidx/fragment/app/Fragment;",
        "",
        "getPageTitle",
        "(I)Ljava/lang/CharSequence;",
        "getCount",
        "()I",
        "",
        "object",
        "getItemPosition",
        "(Ljava/lang/Object;)I",
        "",
        "Lcn/mucang/sundial/library/fragment/BaseFragment;",
        "itemList",
        "Ljava/util/List;",
        "Landroidx/fragment/app/FragmentManager;",
        "fm",
        "<init>",
        "(Landroidx/fragment/app/FragmentManager;)V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/sundial/library/entity/TabEntity<",
            "Lcn/mucang/sundial/library/fragment/BaseFragment;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 4

    const-string v0, "fm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/s;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    const/4 p1, 0x4

    new-array p1, p1, [Lcn/mucang/sundial/library/entity/TabEntity;

    .line 2
    new-instance v1, Lcn/mucang/sundial/library/entity/TabEntity;

    const-class v2, Lcn/mucang/sundial/library/fragment/TrainingInfoFragment;

    const-string v3, "\u57f9\u8bad\u4fe1\u606f"

    invoke-direct {v1, v3, v2}, Lcn/mucang/sundial/library/entity/TabEntity;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, p1, v2

    .line 3
    new-instance v1, Lcn/mucang/sundial/library/entity/TabEntity;

    const-class v2, Lcn/mucang/sundial/library/fragment/TrainingProgressFragment;

    const-string v3, "\u57f9\u8bad\u8fdb\u5ea6"

    invoke-direct {v1, v3, v2}, Lcn/mucang/sundial/library/entity/TabEntity;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, p1, v0

    .line 4
    new-instance v0, Lcn/mucang/sundial/library/entity/TabEntity;

    const-class v1, Lcn/mucang/sundial/library/fragment/PhotoRecordFragment;

    const-string v2, "\u6293\u62cd\u8bb0\u5f55"

    invoke-direct {v0, v2, v1}, Lcn/mucang/sundial/library/entity/TabEntity;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v1, 0x2

    aput-object v0, p1, v1

    .line 5
    new-instance v0, Lcn/mucang/sundial/library/entity/TabEntity;

    const-class v1, Lcn/mucang/sundial/library/fragment/CarStatusFragment;

    const-string v2, "\u8f66\u8f86\u72b6\u6001"

    invoke-direct {v0, v2, v1}, Lcn/mucang/sundial/library/entity/TabEntity;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v1, 0x3

    aput-object v0, p1, v1

    .line 6
    invoke-static {p1}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/library/adapter/TabPagerAdapter;->itemList:Ljava/util/List;

    return-void
.end method

.method private final getItemData(I)Lcn/mucang/sundial/library/entity/TabEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcn/mucang/sundial/library/entity/TabEntity<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/adapter/TabPagerAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/entity/TabEntity;

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/adapter/TabPagerAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/adapter/TabPagerAdapter;->getItemData(I)Lcn/mucang/sundial/library/entity/TabEntity;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/TabEntity;->getPage()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "data.page.newInstance()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    const-string v0, "object"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, -0x2

    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/adapter/TabPagerAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/entity/TabEntity;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/TabEntity;->getLabel()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
