.class public Lcn/mucang/android/selectcity/y;
.super Lf/a/a/e/a/c/b;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/selectcity/y$c;,
        Lcn/mucang/android/selectcity/y$d;
    }
.end annotation


# static fields
.field public static final V:Ljava/lang/String;


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/selectcity/Area;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/selectcity/Area;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/selectcity/Area;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/selectcity/Area;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/selectcity/a0/a;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lcn/mucang/android/selectcity/a0/a;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/util/SparseIntArray;

.field private I:Landroid/widget/EditText;

.field private K:Landroid/view/View;

.field private M:Lcn/mucang/android/selectcity/z/c;

.field private N:I

.field private Q:Ljava/lang/String;

.field private T:Landroid/text/TextWatcher;

.field U:Landroid/view/ViewGroup;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Lcn/mucang/android/selectcity/ui/SectionHeaderView;

.field private i:Lcn/mucang/android/selectcity/ui/CityFlowLayout;

.field private j:Lcn/mucang/android/selectcity/ui/SectionHeaderView;

.field private k:Landroid/widget/LinearLayout;

.field private l:Lcn/mucang/android/core/location/c;

.field private m:Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;

.field private n:Lcn/mucang/android/ui/framework/view/EmptyView;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/selectcity/y;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/selectcity/y;->V:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lf/a/a/e/a/c/b;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/selectcity/y;->o:Z

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/selectcity/y;->p:Z

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/selectcity/y;->q:Z

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/selectcity/y;->r:Z

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcn/mucang/android/selectcity/y;->s:Z

    .line 7
    iput-boolean v1, p0, Lcn/mucang/android/selectcity/y;->t:Z

    .line 8
    iput-boolean v1, p0, Lcn/mucang/android/selectcity/y;->u:Z

    .line 9
    iput-boolean v1, p0, Lcn/mucang/android/selectcity/y;->v:Z

    .line 10
    iput-boolean v0, p0, Lcn/mucang/android/selectcity/y;->w:Z

    .line 11
    iput-boolean v1, p0, Lcn/mucang/android/selectcity/y;->x:Z

    .line 12
    iput-boolean v1, p0, Lcn/mucang/android/selectcity/y;->y:Z

    const/4 v0, 0x5

    .line 13
    iput v0, p0, Lcn/mucang/android/selectcity/y;->z:I

    .line 14
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/selectcity/y;->E:Ljava/util/List;

    .line 15
    iput v1, p0, Lcn/mucang/android/selectcity/y;->N:I

    .line 16
    new-instance v0, Lcn/mucang/android/selectcity/y$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/selectcity/y$a;-><init>(Lcn/mucang/android/selectcity/y;)V

    iput-object v0, p0, Lcn/mucang/android/selectcity/y;->T:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic A(Lcn/mucang/android/selectcity/y;)Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/selectcity/y;->m:Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;

    return-object p0
.end method

.method private A0(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/selectcity/h;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/selectcity/h;-><init>(Lcn/mucang/android/selectcity/y;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic B(Lcn/mucang/android/selectcity/y;ZLcn/mucang/android/core/location/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/selectcity/y;->F0(ZLcn/mucang/android/core/location/c;)V

    return-void
.end method

.method private B0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->n:Lcn/mucang/android/ui/framework/view/EmptyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/selectcity/y;->I:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 5
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->E:Ljava/util/List;

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/selectcity/y;->H0()V

    goto :goto_1

    .line 7
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/selectcity/y;->Z()V

    .line 8
    iget-object v2, p0, Lcn/mucang/android/selectcity/y;->E:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/selectcity/a0/a;

    .line 9
    invoke-virtual {v4}, Lcn/mucang/android/selectcity/a0/a;->b()I

    move-result v5

    if-ne v5, v3, :cond_3

    .line 10
    invoke-virtual {v4}, Lcn/mucang/android/selectcity/a0/a;->a()Lcn/mucang/android/selectcity/Area;

    move-result-object v5

    .line 11
    invoke-virtual {v5}, Lcn/mucang/android/selectcity/Area;->getAreaName()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->d(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 13
    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 14
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {v5}, Lcn/mucang/android/core/utils/n0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v5}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 18
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_4
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 21
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-ge v4, v5, :cond_6

    .line 22
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/selectcity/a0/a;

    invoke-virtual {v5}, Lcn/mucang/android/selectcity/a0/a;->b()I

    move-result v5

    if-nez v5, :cond_5

    add-int/lit8 v5, v4, 0x1

    .line 23
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/selectcity/a0/a;

    invoke-virtual {v5}, Lcn/mucang/android/selectcity/a0/a;->b()I

    move-result v5

    if-nez v5, :cond_5

    .line 24
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 25
    :cond_6
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/selectcity/a0/a;

    invoke-virtual {v4}, Lcn/mucang/android/selectcity/a0/a;->b()I

    move-result v4

    if-nez v4, :cond_7

    .line 27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_7
    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 30
    :cond_8
    iget-object v1, p0, Lcn/mucang/android/selectcity/y;->M:Lcn/mucang/android/selectcity/z/c;

    if-nez v1, :cond_9

    return-void

    .line 31
    :cond_9
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 32
    iget-object v1, p0, Lcn/mucang/android/selectcity/y;->n:Lcn/mucang/android/ui/framework/view/EmptyView;

    sget v3, Lcn/mucang/android/framework/select/city/R$string;->ui_framework__city_not_found:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/mucang/android/ui/framework/view/EmptyView;->setEmptyText(Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcn/mucang/android/selectcity/y;->n:Lcn/mucang/android/ui/framework/view/EmptyView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 34
    :cond_a
    iget-object v1, p0, Lcn/mucang/android/selectcity/y;->M:Lcn/mucang/android/selectcity/z/c;

    invoke-virtual {v1, v0}, Lcn/mucang/android/selectcity/z/a;->f(Ljava/util/List;)Lcn/mucang/android/selectcity/z/a;

    .line 35
    iget-object v1, p0, Lcn/mucang/android/selectcity/y;->M:Lcn/mucang/android/selectcity/z/c;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 36
    iget-object v1, p0, Lcn/mucang/android/selectcity/y;->m:Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 37
    iget-object v1, p0, Lcn/mucang/android/selectcity/y;->U:Landroid/view/ViewGroup;

    sget v2, Lcn/mucang/android/framework/select/city/R$id;->letter_index_bar:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/selectcity/ui/LetterIndexBar;

    .line 38
    invoke-direct {p0, v0}, Lcn/mucang/android/selectcity/y;->L(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->setLetterIdxData(Ljava/util/List;)V

    return-void
.end method

.method private C(Lcn/mucang/android/core/location/c;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/selectcity/y;->t:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcn/mucang/android/selectcity/y;->b0(Lcn/mucang/android/core/location/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/core/location/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/core/location/c;->b()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v1, Lcn/mucang/android/selectcity/Area;

    invoke-direct {v1, p1, v0}, Lcn/mucang/android/selectcity/Area;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, v1}, Lcn/mucang/android/selectcity/y;->G(Lcn/mucang/android/selectcity/Area;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/selectcity/y;->C:Ljava/util/List;

    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcn/mucang/android/selectcity/y;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    .line 8
    iget v0, p0, Lcn/mucang/android/selectcity/y;->z:I

    sub-int/2addr v0, p1

    .line 9
    iget-object p1, p0, Lcn/mucang/android/selectcity/y;->C:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 10
    iget-object v1, p0, Lcn/mucang/android/selectcity/y;->C:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/selectcity/Area;

    .line 11
    invoke-direct {p0, v1}, Lcn/mucang/android/selectcity/y;->G(Lcn/mucang/android/selectcity/Area;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private C0(Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcn/mucang/android/selectcity/y;->F0(ZLcn/mucang/android/core/location/c;)V

    .line 2
    new-instance v0, Lcn/mucang/android/selectcity/j;

    invoke-direct {v0, p0}, Lcn/mucang/android/selectcity/j;-><init>(Lcn/mucang/android/selectcity/y;)V

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/selectcity/y;->E(ZLf/a/a/a/n/c/a;)V

    return-void
.end method

.method private D(Lcn/mucang/android/core/location/c;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->C:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/core/location/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/selectcity/Area;

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/core/location/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcn/mucang/android/selectcity/Area;->getAreaCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method private D0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->d:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcn/mucang/android/selectcity/y;->x:Z

    if-eqz v1, :cond_0

    sget v1, Lcn/mucang/android/framework/select/city/R$string;->select_city__top_bar_title_province:I

    goto :goto_0

    :cond_0
    sget v1, Lcn/mucang/android/framework/select/city/R$string;->select_city__top_bar_title:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private E(ZLf/a/a/a/n/c/a;)V
    .locals 5

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    if-nez p1, :cond_0

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/utils/z;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/selectcity/y;->F0(ZLcn/mucang/android/core/location/c;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/location/LocationUtils;->d()Lcn/mucang/android/core/location/c;

    move-result-object p1

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/utils/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1}, Lcn/mucang/android/selectcity/y;->b0(Lcn/mucang/android/core/location/c;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    new-instance p1, Lcn/mucang/android/core/permission/model/PermissionsResult;

    const/4 v0, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, v0, v1}, Lcn/mucang/android/core/permission/model/PermissionsResult;-><init>(ZLjava/util/List;)V

    invoke-interface {p2, p1}, Lf/a/a/a/n/c/a;->permissionsResult(Lcn/mucang/android/core/permission/model/PermissionsResult;)V

    return-void

    .line 7
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/selectcity/y;->Q:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "\u5f00\u542f\u5b9a\u4f4d\u6743\u9650\uff0c\u4fbf\u4e8e\u5b9a\u4f4d\u60a8\u6240\u5728\u7684\u57ce\u5e02\u5e76\u63d0\u4f9b\u76f8\u5173\u670d\u52a1"

    .line 8
    iput-object p1, p0, Lcn/mucang/android/selectcity/y;->Q:Ljava/lang/String;

    .line 9
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v0, Lcn/mucang/android/core/permission/mvp/PermissionItemModel;

    iget-object v1, p0, Lcn/mucang/android/selectcity/y;->Q:Ljava/lang/String;

    sget v2, Lcn/mucang/android/framework/select/city/R$drawable;->core__ic_permission_locating:I

    const-string v3, "\u5b9a\u4f4d\u6743\u9650"

    invoke-direct {v0, v3, v1, v2}, Lcn/mucang/android/core/permission/mvp/PermissionItemModel;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/core/permission/model/PermissionGuideModel;

    const-string v2, "\u6e29\u99a8\u63d0\u793a"

    const-string v3, "\u4e3a\u66f4\u597d\u7684\u4e3a\u60a8\u63d0\u4f9b\u670d\u52a1\uff0c\u7533\u8bf7\u83b7\u53d6\u4ee5\u4e0b\u6743\u9650"

    const-string v4, "\u540c\u610f\u7533\u8bf7\u6743\u9650"

    invoke-direct {v1, v2, v3, v4, p1}, Lcn/mucang/android/core/permission/model/PermissionGuideModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    new-instance p1, Lcn/mucang/android/selectcity/f;

    invoke-direct {p1, p0, p2}, Lcn/mucang/android/selectcity/f;-><init>(Lcn/mucang/android/selectcity/y;Lf/a/a/a/n/c/a;)V

    invoke-static {v0, v1, p1}, Lf/a/a/a/n/d/e;->C(Landroidx/fragment/app/FragmentManager;Lcn/mucang/android/core/permission/model/PermissionGuideModel;Lf/a/a/a/n/c/b;)V

    return-void
.end method

.method private E0(Lcn/mucang/android/core/location/c;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/core/location/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/mucang/android/framework/select/city/R$string;->select_city__location_dialog_title:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "\u786e\u8ba4"

    .line 5
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcn/mucang/android/selectcity/i;

    invoke-direct {v2, p0, p1}, Lcn/mucang/android/selectcity/i;-><init>(Lcn/mucang/android/selectcity/y;Lcn/mucang/android/core/location/c;)V

    const-string p1, "\u786e\u5b9a"

    .line 6
    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u53d6\u6d88"

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 8
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private F()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/selectcity/y;->x:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/mucang/android/selectcity/y;->r:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/mucang/android/selectcity/y;->v:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/mucang/android/selectcity/y;->w:Z

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/selectcity/y;->V:Ljava/lang/String;

    const-string v2, "EXTRA_ONLY_SELECT_PROVINCE\u548c(EXTRA_ONLY_SHOW_CITY\u6216EXTRA_SHOW_LOCATION_PANEL \u6216 EXTRA_SHOW_SEARCH_BAR)\u4e0d\u80fd\u540c\u65f6\u90fd\u4e3aTrue"

    invoke-static {v0, v2}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcn/mucang/android/selectcity/y;->y:Z

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcn/mucang/android/selectcity/y;->o:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcn/mucang/android/selectcity/y;->p:Z

    if-eqz v2, :cond_3

    .line 4
    :cond_2
    sget-object v0, Lcn/mucang/android/selectcity/y;->V:Ljava/lang/String;

    const-string v2, "EXTRA_NEED_SELECT_REGION \u8981\u6c42 mShowWholeCountry||mShowWholeProvince\u4e3aFALSE"

    invoke-static {v0, v2}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    if-eqz v0, :cond_4

    .line 5
    iget-boolean v0, p0, Lcn/mucang/android/selectcity/y;->s:Z

    if-eqz v0, :cond_4

    .line 6
    sget-object v0, Lcn/mucang/android/selectcity/y;->V:Ljava/lang/String;

    const-string v2, "EXTRA_NEED_SELECT_REGION \u8981\u6c42 EXTRA_SUPPORT_MULTI_CITY\u4e3aFALSE"

    invoke-static {v0, v2}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private F0(ZLcn/mucang/android/core/location/c;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->g:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez p1, :cond_3

    .line 3
    invoke-static {p2}, Lcn/mucang/android/selectcity/y;->b0(Lcn/mucang/android/core/location/c;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iput-object p2, p0, Lcn/mucang/android/selectcity/y;->l:Lcn/mucang/android/core/location/c;

    .line 5
    iget-object p1, p0, Lcn/mucang/android/selectcity/y;->g:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcn/mucang/android/core/location/c;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/selectcity/y;->g:Landroid/widget/TextView;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/mucang/android/framework/select/city/R$string;->select_city__locating_failed_title:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private G(Lcn/mucang/android/selectcity/Area;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/selectcity/y;->P(Lcn/mucang/android/selectcity/Area;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/selectcity/y;->a0()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget v1, p0, Lcn/mucang/android/selectcity/y;->z:I

    if-lt v0, v1, :cond_1

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6700\u591a\u53ea\u80fd\u6dfb\u52a0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/mucang/android/selectcity/y;->z:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u4e2a\u57ce\u5e02"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/mucang/android/framework/select/city/R$layout;->select_city__selected_city_item:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 5
    sget v1, Lcn/mucang/android/framework/select/city/R$id;->city_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6
    sget v2, Lcn/mucang/android/framework/select/city/R$id;->iv_delete:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/selectcity/Area;->getAreaName()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {p1}, Lcn/mucang/android/selectcity/Area;->isDisableDelete()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcn/mucang/android/selectcity/Area;->getDisableDeleteReason()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/selectcity/Area;->getDisableDeleteReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v1, p0, Lcn/mucang/android/selectcity/y;->D:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v1, p0, Lcn/mucang/android/selectcity/y;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 13
    iget-object v1, p0, Lcn/mucang/android/selectcity/y;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcn/mucang/android/selectcity/y;->G0(I)V

    .line 14
    invoke-virtual {p1}, Lcn/mucang/android/selectcity/Area;->isDisableDelete()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p1, 0x4

    .line 15
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    new-instance v1, Lcn/mucang/android/selectcity/k;

    invoke-direct {v1, p0, v0, p1}, Lcn/mucang/android/selectcity/k;-><init>(Lcn/mucang/android/selectcity/y;Landroid/view/View;Lcn/mucang/android/selectcity/Area;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private G0(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5df2\u9009\u57ce\u5e02"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/selectcity/y;->a0()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\uff08"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcn/mucang/android/selectcity/y;->z:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\uff09"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/selectcity/y;->h:Lcn/mucang/android/selectcity/ui/SectionHeaderView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/selectcity/ui/SectionHeaderView;->setHeaderTitle(Ljava/lang/String;)V

    return-void
.end method

.method private H()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private H0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->i:Lcn/mucang/android/selectcity/ui/CityFlowLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->j:Lcn/mucang/android/selectcity/ui/SectionHeaderView;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private I(Lcn/mucang/android/selectcity/Area;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/selectcity/Area;->getAreaCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RESULT_CITY_CODE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/selectcity/Area;->getAreaName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RESULT_CITY_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "RESULT_CITY_DATA"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/selectcity/Area;->getAreaCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/selectcity/c0/a;->i(Ljava/lang/String;)Lcn/mucang/android/selectcity/Area;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/selectcity/Area;->getAreaName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RESULT_PROVINCE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 9
    :cond_0
    new-instance v0, Lcn/mucang/android/selectcity/y$c;

    invoke-direct {v0, p1}, Lcn/mucang/android/selectcity/y$c;-><init>(Lcn/mucang/android/selectcity/Area;)V

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private J(Lcn/mucang/android/core/location/c;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/selectcity/y;->y:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/core/location/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/mucang/android/selectcity/y;->A0(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/android/selectcity/Area;

    invoke-virtual {p1}, Lcn/mucang/android/core/location/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/mucang/android/core/location/c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcn/mucang/android/selectcity/Area;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/selectcity/y;->I(Lcn/mucang/android/selectcity/Area;)V

    :goto_0
    return-void
.end method

.method private K()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/selectcity/y;->D:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    const-string v2, "RESULT_CITY_LIST"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 6
    :cond_0
    new-instance v0, Lcn/mucang/android/selectcity/y$c;

    iget-object v1, p0, Lcn/mucang/android/selectcity/y;->D:Ljava/util/List;

    invoke-direct {v0, v1}, Lcn/mucang/android/selectcity/y$c;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private L(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/selectcity/a0/a;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/selectcity/a0/a;

    .line 3
    invoke-virtual {v1}, Lcn/mucang/android/selectcity/a0/a;->b()I

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcn/mucang/android/selectcity/a0/a;->c()Lcn/mucang/android/selectcity/a0/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/selectcity/a0/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private M(Ljava/lang/String;Ljava/util/List;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/mucang/android/selectcity/Area;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    sget v1, Lcn/mucang/android/framework/select/city/R$layout;->select_city__city_list_header:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    sget v1, Lcn/mucang/android/framework/select/city/R$id;->city_flow_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/selectcity/ui/CityFlowLayout;

    iput-object v1, p0, Lcn/mucang/android/selectcity/y;->i:Lcn/mucang/android/selectcity/ui/CityFlowLayout;

    .line 3
    new-instance v2, Lcn/mucang/android/selectcity/g;

    invoke-direct {v2, p0}, Lcn/mucang/android/selectcity/g;-><init>(Lcn/mucang/android/selectcity/y;)V

    invoke-virtual {v1, v2}, Lcn/mucang/android/selectcity/ui/CityFlowLayout;->setListener(Lcn/mucang/android/selectcity/ui/CityFlowLayout$a;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/selectcity/y;->i:Lcn/mucang/android/selectcity/ui/CityFlowLayout;

    invoke-virtual {v1, p2}, Lcn/mucang/android/selectcity/ui/CityFlowLayout;->setCities(Ljava/util/List;)V

    .line 5
    sget p2, Lcn/mucang/android/framework/select/city/R$id;->header_title:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/selectcity/ui/SectionHeaderView;

    iput-object p2, p0, Lcn/mucang/android/selectcity/y;->j:Lcn/mucang/android/selectcity/ui/SectionHeaderView;

    .line 6
    invoke-virtual {p2, p1}, Lcn/mucang/android/selectcity/ui/SectionHeaderView;->setHeaderTitle(Ljava/lang/String;)V

    return-object v0
.end method

.method private N(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->H:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v1, p0, Lcn/mucang/android/selectcity/y;->m:Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->H:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->put(II)V

    return p1

    .line 4
    :cond_0
    iget-object v2, p0, Lcn/mucang/android/selectcity/y;->E:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    .line 5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/selectcity/a0/a;

    .line 7
    invoke-virtual {v4}, Lcn/mucang/android/selectcity/a0/a;->b()I

    move-result v5

    if-nez v5, :cond_1

    .line 8
    invoke-virtual {v4}, Lcn/mucang/android/selectcity/a0/a;->d()I

    move-result v4

    sub-int v5, p1, v1

    if-ne v4, v5, :cond_1

    add-int v0, v3, v1

    .line 9
    iget-object v1, p0, Lcn/mucang/android/selectcity/y;->H:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private O(Lcn/mucang/android/selectcity/Area;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/selectcity/y;->s:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/selectcity/y;->G(Lcn/mucang/android/selectcity/Area;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/android/selectcity/y;->I(Lcn/mucang/android/selectcity/Area;)V

    :goto_0
    return-void
.end method

.method private P(Lcn/mucang/android/selectcity/Area;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u60a8\u5df2\u7ecf\u9009\u62e9\u4e86\u8be5\u57ce\u5e02"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private Q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->U:Landroid/view/ViewGroup;

    sget v1, Lcn/mucang/android/framework/select/city/R$id;->gps_locating_header:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->U:Landroid/view/ViewGroup;

    sget v2, Lcn/mucang/android/framework/select/city/R$id;->gps_locating_row:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private R()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/selectcity/p;

    invoke-direct {v0, p0}, Lcn/mucang/android/selectcity/p;-><init>(Lcn/mucang/android/selectcity/y;)V

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private S()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->U:Landroid/view/ViewGroup;

    sget v1, Lcn/mucang/android/framework/select/city/R$id;->letter_index_bar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/selectcity/ui/LetterIndexBar;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcn/mucang/android/selectcity/y;->F:Lcn/mucang/android/selectcity/a0/a;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Lcn/mucang/android/selectcity/a0/a;->c()Lcn/mucang/android/selectcity/a0/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/selectcity/a0/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    iget-object v2, p0, Lcn/mucang/android/selectcity/y;->E:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/selectcity/a0/a;

    .line 6
    invoke-virtual {v3}, Lcn/mucang/android/selectcity/a0/a;->b()I

    move-result v4

    if-nez v4, :cond_1

    .line 7
    invoke-virtual {v3}, Lcn/mucang/android/selectcity/a0/a;->c()Lcn/mucang/android/selectcity/a0/b;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/selectcity/a0/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0, v1}, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->setLetterIdxData(Ljava/util/List;)V

    .line 9
    new-instance v1, Lcn/mucang/android/selectcity/y$b;

    invoke-direct {v1, p0}, Lcn/mucang/android/selectcity/y$b;-><init>(Lcn/mucang/android/selectcity/y;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/selectcity/ui/LetterIndexBar;->setOnTouchingLetterChangedListener(Lcn/mucang/android/selectcity/ui/LetterIndexBar$a;)V

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private T()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->U:Landroid/view/ViewGroup;

    sget v1, Lcn/mucang/android/framework/select/city/R$id;->provinces:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;

    iput-object v0, p0, Lcn/mucang/android/selectcity/y;->m:Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->B:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->m:Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;

    iget-object v3, p0, Lcn/mucang/android/selectcity/y;->B:Ljava/util/List;

    const-string v4, "\u70ed\u95e8\u57ce\u5e02"

    invoke-direct {p0, v4, v3}, Lcn/mucang/android/selectcity/y;->M(Ljava/lang/String;Ljava/util/List;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->A:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->m:Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;

    iget-object v3, p0, Lcn/mucang/android/selectcity/y;->A:Ljava/util/List;

    const-string v4, "\u6700\u8fd1\u8bbf\u95ee\u57ce\u5e02"

    invoke-direct {p0, v4, v3}, Lcn/mucang/android/selectcity/y;->M(Ljava/lang/String;Ljava/util/List;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 7
    :cond_1
    :goto_0
    new-instance v0, Lcn/mucang/android/selectcity/z/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/d;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/selectcity/y;->E:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/selectcity/z/c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcn/mucang/android/selectcity/y;->M:Lcn/mucang/android/selectcity/z/c;

    .line 8
    iget-object v1, p0, Lcn/mucang/android/selectcity/y;->m:Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;

    invoke-virtual {v1, v0}, Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->m:Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private U()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/selectcity/y;->r:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/mucang/android/core/location/LocationUtils;->d()Lcn/mucang/android/core/location/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-boolean v1, p0, Lcn/mucang/android/selectcity/y;->r:Z

    if-eqz v1, :cond_2

    .line 3
    invoke-static {v0}, Lcn/mucang/android/selectcity/y;->b0(Lcn/mucang/android/core/location/c;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcn/mucang/android/selectcity/y;->q:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-direct {p0, v0}, Lcn/mucang/android/selectcity/y;->D(Lcn/mucang/android/core/location/c;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-direct {p0, v0}, Lcn/mucang/android/selectcity/y;->E0(Lcn/mucang/android/core/location/c;)V

    :cond_1
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, v1, v0}, Lcn/mucang/android/selectcity/y;->F0(ZLcn/mucang/android/core/location/c;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-direct {p0}, Lcn/mucang/android/selectcity/y;->Q()V

    .line 8
    :goto_1
    invoke-direct {p0, v0}, Lcn/mucang/android/selectcity/y;->V(Lcn/mucang/android/core/location/c;)V

    return-void
.end method

.method private V(Lcn/mucang/android/core/location/c;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "__extra_support_mulit_city__"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/selectcity/y;->s:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/selectcity/y;->D:Ljava/util/List;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "__extra_add_auto_location_city__"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/selectcity/y;->t:Z

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "__extra_max_city_count_in_multi_mode__"

    const/4 v3, 0x5

    .line 5
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/selectcity/y;->z:I

    if-gtz v0, :cond_1

    .line 6
    iput v3, p0, Lcn/mucang/android/selectcity/y;->z:I

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->U:Landroid/view/ViewGroup;

    sget v1, Lcn/mucang/android/framework/select/city/R$id;->selected_cities_content:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/mucang/android/selectcity/y;->k:Landroid/widget/LinearLayout;

    .line 8
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->U:Landroid/view/ViewGroup;

    sget v1, Lcn/mucang/android/framework/select/city/R$id;->selected_cities_info:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/selectcity/ui/SectionHeaderView;

    iput-object v0, p0, Lcn/mucang/android/selectcity/y;->h:Lcn/mucang/android/selectcity/ui/SectionHeaderView;

    .line 9
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->U:Landroid/view/ViewGroup;

    sget v1, Lcn/mucang/android/framework/select/city/R$id;->btn_complete:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->U:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-direct {p0, p1}, Lcn/mucang/android/selectcity/y;->C(Lcn/mucang/android/core/location/c;)V

    .line 12
    iget-object p1, p0, Lcn/mucang/android/selectcity/y;->h:Lcn/mucang/android/selectcity/ui/SectionHeaderView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/selectcity/y;->U:Landroid/view/ViewGroup;

    sget v0, Lcn/mucang/android/framework/select/city/R$id;->horizontal_scrollview:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcn/mucang/android/selectcity/y;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcn/mucang/android/selectcity/y;->G0(I)V

    return-void
.end method

.method private W()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, p0, Lcn/mucang/android/selectcity/y;->o:Z

    const-string v2, "EXTRA_SHOW_WHOLE_COUNTRY"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/mucang/android/selectcity/y;->o:Z

    .line 4
    iget-boolean v1, p0, Lcn/mucang/android/selectcity/y;->p:Z

    const-string v2, "EXTRA_SHOW_WHOLE_PROVINCE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/mucang/android/selectcity/y;->p:Z

    .line 5
    iget-boolean v1, p0, Lcn/mucang/android/selectcity/y;->q:Z

    const-string v2, "EXTRA_SHOW_LOCATION_DIALOG"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/mucang/android/selectcity/y;->q:Z

    .line 6
    iget-boolean v1, p0, Lcn/mucang/android/selectcity/y;->r:Z

    const-string v2, "EXTRA_SHOW_LOCATION_PANEL"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/mucang/android/selectcity/y;->r:Z

    .line 7
    iget-boolean v1, p0, Lcn/mucang/android/selectcity/y;->v:Z

    const-string v2, "EXTRA_ONLY_SHOW_CITY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/mucang/android/selectcity/y;->v:Z

    .line 8
    iget-boolean v1, p0, Lcn/mucang/android/selectcity/y;->u:Z

    const-string v2, "EXTRA_SHOW_RECENT_CITIES"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/mucang/android/selectcity/y;->u:Z

    .line 9
    iget-boolean v1, p0, Lcn/mucang/android/selectcity/y;->w:Z

    const-string v2, "EXTRA_SHOW_SEARCH_BAR"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/mucang/android/selectcity/y;->w:Z

    .line 10
    iget-boolean v1, p0, Lcn/mucang/android/selectcity/y;->x:Z

    const-string v2, "EXTRA_ONLY_SELECT_PROVINCE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/mucang/android/selectcity/y;->x:Z

    .line 11
    iget-boolean v1, p0, Lcn/mucang/android/selectcity/y;->y:Z

    const-string v2, "EXTRA_ONLY_SELECT_REGION"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/mucang/android/selectcity/y;->y:Z

    const-string v1, "__extra_default_cities__"

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/selectcity/y;->C:Ljava/util/List;

    const-string v1, "EXTRA_PERMISSION_LOCATION_DESCRIPTION"

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/selectcity/y;->Q:Ljava/lang/String;

    .line 14
    :cond_0
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/selectcity/y;->H:Landroid/util/SparseIntArray;

    .line 15
    invoke-direct {p0}, Lcn/mucang/android/selectcity/y;->F()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u9009\u62e9\u57ce\u5e02\u53c2\u6570\u4e0d\u5408\u6cd5\uff01\uff01\uff01"

    .line 16
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_1
    sget-object v1, Lcn/mucang/android/selectcity/y;->V:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private Y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->U:Landroid/view/ViewGroup;

    sget v1, Lcn/mucang/android/framework/select/city/R$id;->selected_cities_bar_title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/selectcity/y;->d:Landroid/widget/TextView;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->U:Landroid/view/ViewGroup;

    sget v1, Lcn/mucang/android/framework/select/city/R$id;->empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/ui/framework/view/EmptyView;

    iput-object v0, p0, Lcn/mucang/android/selectcity/y;->n:Lcn/mucang/android/ui/framework/view/EmptyView;

    .line 3
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->U:Landroid/view/ViewGroup;

    sget v1, Lcn/mucang/android/framework/select/city/R$id;->back:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->U:Landroid/view/ViewGroup;

    sget v1, Lcn/mucang/android/framework/select/city/R$id;->locating:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/selectcity/y;->e:Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->U:Landroid/view/ViewGroup;

    sget v1, Lcn/mucang/android/framework/select/city/R$id;->location_result:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/selectcity/y;->g:Landroid/widget/TextView;

    .line 6
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->U:Landroid/view/ViewGroup;

    sget v1, Lcn/mucang/android/framework/select/city/R$id;->relocate:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/selectcity/y;->f:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->U:Landroid/view/ViewGroup;

    sget v1, Lcn/mucang/android/framework/select/city/R$id;->edt_search_q:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/mucang/android/selectcity/y;->I:Landroid/widget/EditText;

    .line 10
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->U:Landroid/view/ViewGroup;

    sget v1, Lcn/mucang/android/framework/select/city/R$id;->search_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/selectcity/y;->K:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->U:Landroid/view/ViewGroup;

    new-instance v1, Lcn/mucang/android/selectcity/r;

    invoke-direct {v1, p0}, Lcn/mucang/android/selectcity/r;-><init>(Lcn/mucang/android/selectcity/y;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/selectcity/y;->X()V

    .line 13
    invoke-direct {p0}, Lcn/mucang/android/selectcity/y;->U()V

    return-void
.end method

.method private Z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->i:Lcn/mucang/android/selectcity/ui/CityFlowLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->j:Lcn/mucang/android/selectcity/ui/SectionHeaderView;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private a0()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/selectcity/y;->s:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/mucang/android/selectcity/y;->z:I

    const v1, 0x7fffffff

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected static b0(Lcn/mucang/android/core/location/c;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/location/LocationUtils;->g()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/core/location/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/core/location/c;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic c0(Lf/a/a/a/n/c/a;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object p2

    new-instance v0, Lcn/mucang/android/selectcity/q;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/selectcity/q;-><init>(Lcn/mucang/android/selectcity/y;Lf/a/a/a/n/c/a;)V

    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcn/mucang/android/core/utils/z;->d(Landroid/app/Activity;Lf/a/a/a/n/c/a;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/selectcity/y;->F0(ZLcn/mucang/android/core/location/c;)V

    const-string p1, "\u5b9a\u4f4d\u5931\u8d25\uff0c\u8bf7\u5f00\u542f\u5b9a\u4f4d\u6743\u9650"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic e0(Landroid/view/View;Lcn/mucang/android/selectcity/Area;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcn/mucang/android/selectcity/y;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/selectcity/y;->D:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lcn/mucang/android/selectcity/y;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcn/mucang/android/selectcity/y;->G0(I)V

    return-void
.end method

.method private synthetic g0(Lcn/mucang/android/selectcity/Area;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/selectcity/y;->O(Lcn/mucang/android/selectcity/Area;)V

    return-void
.end method

.method private synthetic i0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/selectcity/y;->v:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->E:Ljava/util/List;

    iget-boolean v1, p0, Lcn/mucang/android/selectcity/y;->o:Z

    invoke-static {v1}, Lcn/mucang/android/selectcity/c0/a;->d(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    new-instance v0, Lcn/mucang/android/selectcity/a0/a;

    new-instance v1, Lcn/mucang/android/selectcity/a0/b;

    const-string v2, "#"

    invoke-direct {v1, v2}, Lcn/mucang/android/selectcity/a0/b;-><init>(Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/selectcity/a0/a;-><init>(Lcn/mucang/android/selectcity/a0/b;I)V

    iput-object v0, p0, Lcn/mucang/android/selectcity/y;->F:Lcn/mucang/android/selectcity/a0/a;

    .line 4
    invoke-static {}, Lcn/mucang/android/selectcity/c0/a;->h()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/selectcity/y;->B:Ljava/util/List;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->E:Ljava/util/List;

    iget-boolean v1, p0, Lcn/mucang/android/selectcity/y;->o:Z

    invoke-static {v1}, Lcn/mucang/android/selectcity/c0/a;->j(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-boolean v0, p0, Lcn/mucang/android/selectcity/y;->u:Z

    if-eqz v0, :cond_1

    .line 7
    iget-boolean v0, p0, Lcn/mucang/android/selectcity/y;->o:Z

    iget-boolean v1, p0, Lcn/mucang/android/selectcity/y;->p:Z

    invoke-static {v0, v1}, Lcn/mucang/android/selectcity/c0/a;->m(ZZ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/selectcity/y;->A:Ljava/util/List;

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/selectcity/l;

    invoke-direct {v1, p0}, Lcn/mucang/android/selectcity/l;-><init>(Lcn/mucang/android/selectcity/y;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private synthetic k0(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/selectcity/y;->U:Landroid/view/ViewGroup;

    sget p2, Lcn/mucang/android/framework/select/city/R$id;->letter_index_bar:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/selectcity/ui/LetterIndexBar;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p9, :cond_1

    if-eqz p5, :cond_1

    sub-int p2, p9, p5

    .line 2
    iget p3, p0, Lcn/mucang/android/selectcity/y;->N:I

    if-le p2, p3, :cond_1

    const/4 p2, 0x4

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-eqz p9, :cond_2

    if-eqz p5, :cond_2

    sub-int/2addr p5, p9

    .line 4
    iget p2, p0, Lcn/mucang/android/selectcity/y;->N:I

    if-le p5, p2, :cond_2

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic m0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/selectcity/y;->T()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/selectcity/y;->S()V

    return-void
.end method

.method private synthetic o0(Lf/a/a/a/n/c/a;Lcn/mucang/android/core/permission/model/PermissionsResult;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcn/mucang/android/core/permission/model/PermissionsResult;->getGrantedAll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, p2}, Lf/a/a/a/n/c/a;->permissionsResult(Lcn/mucang/android/core/permission/model/PermissionsResult;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 3
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/selectcity/y;->F0(ZLcn/mucang/android/core/location/c;)V

    const-string p1, "\u5b9a\u4f4d\u5931\u8d25\uff0c\u8bf7\u5f00\u542f\u5b9a\u4f4d\u6743\u9650"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic q0(Ljava/util/List;Lcn/mucang/android/selectcity/Area;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x2

    .line 2
    invoke-static {p0, p2, p1}, Lcn/mucang/android/selectcity/SelectRegionByCityActivity;->m(Landroidx/fragment/app/Fragment;ILjava/util/List;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    sget-object p1, Lcn/mucang/android/selectcity/y;->V:Ljava/lang/String;

    const-string v0, "\u5f53\u524d\u57ce\u5e02\u6ca1\u6709\u5206\u533a"

    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0, p2}, Lcn/mucang/android/selectcity/y;->I(Lcn/mucang/android/selectcity/Area;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method private synthetic s0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/selectcity/y;->H()V

    return-void
.end method

.method private synthetic u0(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcn/mucang/android/selectcity/c0/a;->n(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcn/mucang/android/selectcity/c0/a;->e(Ljava/lang/String;)Lcn/mucang/android/selectcity/Area;

    move-result-object p1

    .line 3
    new-instance v1, Lcn/mucang/android/selectcity/n;

    invoke-direct {v1, p0, v0, p1}, Lcn/mucang/android/selectcity/n;-><init>(Lcn/mucang/android/selectcity/y;Ljava/util/List;Lcn/mucang/android/selectcity/Area;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic w(Lcn/mucang/android/selectcity/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/selectcity/y;->B0()V

    return-void
.end method

.method private synthetic w0(Lcn/mucang/android/core/permission/model/PermissionsResult;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/core/permission/model/PermissionsResult;->getGrantedAll()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcn/mucang/android/selectcity/y;->F0(ZLcn/mucang/android/core/location/c;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Lcn/mucang/android/selectcity/y$d;

    invoke-direct {p1, p0}, Lcn/mucang/android/selectcity/y$d;-><init>(Lcn/mucang/android/selectcity/y;)V

    invoke-static {p1}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic x(Lcn/mucang/android/selectcity/y;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/selectcity/y;->G:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic y(Lcn/mucang/android/selectcity/y;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/selectcity/y;->G:Landroid/widget/TextView;

    return-object p1
.end method

.method private synthetic y0(Lcn/mucang/android/core/location/c;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/selectcity/y;->J(Lcn/mucang/android/core/location/c;)V

    return-void
.end method

.method static synthetic z(Lcn/mucang/android/selectcity/y;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/selectcity/y;->N(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected X()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/selectcity/y;->w:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->I:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/mucang/android/selectcity/y;->T:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->K:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->K:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public synthetic d0(Lf/a/a/a/n/c/a;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/selectcity/y;->c0(Lf/a/a/a/n/c/a;Z)V

    return-void
.end method

.method public synthetic f0(Landroid/view/View;Lcn/mucang/android/selectcity/Area;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/selectcity/y;->e0(Landroid/view/View;Lcn/mucang/android/selectcity/Area;Landroid/view/View;)V

    return-void
.end method

.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u9009\u62e9\u57ce\u5e02\u9996\u9875"

    return-object v0
.end method

.method public synthetic h0(Lcn/mucang/android/selectcity/Area;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/selectcity/y;->g0(Lcn/mucang/android/selectcity/Area;)V

    return-void
.end method

.method public synthetic j0()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/selectcity/y;->i0()V

    return-void
.end method

.method public synthetic l0(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcn/mucang/android/selectcity/y;->k0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public synthetic n0()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/selectcity/y;->m0()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lf/a/a/e/a/c/b;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    :cond_1
    const-string p1, "RESULT_CITY"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/selectcity/Area;

    if-eqz p1, :cond_2

    .line 3
    invoke-direct {p0, p1}, Lcn/mucang/android/selectcity/y;->O(Lcn/mucang/android/selectcity/Area;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lcn/mucang/android/framework/select/city/R$id;->back:I

    if-ne p1, v0, :cond_2

    .line 3
    iget-object p1, p0, Lcn/mucang/android/selectcity/y;->D:Ljava/util/List;

    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "EXTRA_CUSTOM_EXIT_TIPS_MESSAGE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 7
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_0
    const-string p1, "\u60a8\u5df2\u9009\u62e9\u57ce\u5e02\uff0c\u786e\u5b9a\u9000\u51fa\u5417\uff1f"

    .line 9
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 10
    :goto_0
    new-instance p1, Lcn/mucang/android/selectcity/m;

    invoke-direct {p1, p0}, Lcn/mucang/android/selectcity/m;-><init>(Lcn/mucang/android/selectcity/y;)V

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    const-string v1, "\u53d6\u6d88"

    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 12
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 13
    :cond_1
    invoke-direct {p0}, Lcn/mucang/android/selectcity/y;->H()V

    goto :goto_1

    .line 14
    :cond_2
    sget v0, Lcn/mucang/android/framework/select/city/R$id;->relocate:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    .line 15
    invoke-direct {p0, p1}, Lcn/mucang/android/selectcity/y;->C0(Z)V

    goto :goto_1

    .line 16
    :cond_3
    sget v0, Lcn/mucang/android/framework/select/city/R$id;->location_result:I

    if-ne p1, v0, :cond_6

    .line 17
    iget-object p1, p0, Lcn/mucang/android/selectcity/y;->l:Lcn/mucang/android/core/location/c;

    invoke-static {p1}, Lcn/mucang/android/selectcity/y;->b0(Lcn/mucang/android/core/location/c;)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 18
    :cond_4
    iget-boolean p1, p0, Lcn/mucang/android/selectcity/y;->s:Z

    if-eqz p1, :cond_5

    .line 19
    new-instance p1, Lcn/mucang/android/selectcity/Area;

    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->l:Lcn/mucang/android/core/location/c;

    invoke-virtual {v0}, Lcn/mucang/android/core/location/c;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/selectcity/y;->l:Lcn/mucang/android/core/location/c;

    invoke-virtual {v1}, Lcn/mucang/android/core/location/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcn/mucang/android/selectcity/Area;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Lcn/mucang/android/selectcity/y;->G(Lcn/mucang/android/selectcity/Area;)V

    goto :goto_1

    .line 21
    :cond_5
    iget-object p1, p0, Lcn/mucang/android/selectcity/y;->l:Lcn/mucang/android/core/location/c;

    invoke-direct {p0, p1}, Lcn/mucang/android/selectcity/y;->J(Lcn/mucang/android/core/location/c;)V

    goto :goto_1

    .line 22
    :cond_6
    sget v0, Lcn/mucang/android/framework/select/city/R$id;->btn_complete:I

    if-ne p1, v0, :cond_7

    .line 23
    invoke-direct {p0}, Lcn/mucang/android/selectcity/y;->K()V

    :cond_7
    :goto_1
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/selectcity/c0/a;->c()V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Landroid/widget/ListAdapter;

    .line 2
    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/selectcity/a0/a;

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/selectcity/a0/a;->b()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/selectcity/a0/a;->a()Lcn/mucang/android/selectcity/Area;

    move-result-object p1

    .line 5
    iget-boolean p2, p0, Lcn/mucang/android/selectcity/y;->x:Z

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcn/mucang/android/selectcity/Area;->isMunicipality()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    .line 6
    iget-boolean p3, p0, Lcn/mucang/android/selectcity/y;->p:Z

    iget-boolean p4, p0, Lcn/mucang/android/selectcity/y;->y:Z

    invoke-static {p0, p2, p3, p1, p4}, Lcn/mucang/android/selectcity/SelectCityByProvinceActivity;->launchForResult(Landroidx/fragment/app/Fragment;IZLcn/mucang/android/selectcity/Area;Z)V

    goto :goto_0

    .line 7
    :cond_1
    iget-boolean p2, p0, Lcn/mucang/android/selectcity/y;->y:Z

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcn/mucang/android/selectcity/Area;->isMunicipality()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p1}, Lcn/mucang/android/selectcity/Area;->getAreaCode()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/mucang/android/selectcity/y;->A0(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_2
    invoke-direct {p0, p1}, Lcn/mucang/android/selectcity/y;->O(Lcn/mucang/android/selectcity/Area;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic p0(Lf/a/a/a/n/c/a;Lcn/mucang/android/core/permission/model/PermissionsResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/selectcity/y;->o0(Lf/a/a/a/n/c/a;Lcn/mucang/android/core/permission/model/PermissionsResult;)V

    return-void
.end method

.method public synthetic r0(Ljava/util/List;Lcn/mucang/android/selectcity/Area;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/selectcity/y;->q0(Ljava/util/List;Lcn/mucang/android/selectcity/Area;)V

    return-void
.end method

.method protected s()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/framework/select/city/R$layout;->select_city__start_up_activity:I

    return v0
.end method

.method protected t(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcn/mucang/android/selectcity/y;->U:Landroid/view/ViewGroup;

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/selectcity/y;->W()V

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/selectcity/y;->Y()V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/selectcity/y;->R()V

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/selectcity/y;->D0()V

    .line 6
    invoke-static {}, Lcn/mucang/android/core/utils/PhoneInfoUtils;->a()Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;->getScreenHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcn/mucang/android/selectcity/y;->N:I

    return-void
.end method

.method public synthetic t0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/selectcity/y;->s0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public u(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/y;->U:Landroid/view/ViewGroup;

    sget v1, Lcn/mucang/android/framework/select/city/R$id;->back:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lf/a/a/e/a/c/b;->u(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public synthetic v0(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/selectcity/y;->u0(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic x0(Lcn/mucang/android/core/permission/model/PermissionsResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/selectcity/y;->w0(Lcn/mucang/android/core/permission/model/PermissionsResult;)V

    return-void
.end method

.method public synthetic z0(Lcn/mucang/android/core/location/c;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/selectcity/y;->y0(Lcn/mucang/android/core/location/c;Landroid/content/DialogInterface;I)V

    return-void
.end method
