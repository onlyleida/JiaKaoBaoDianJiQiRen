.class public Lcn/mucang/android/selectcity/b0/a;
.super Lf/a/a/e/a/c/b;
.source "SourceFile"


# instance fields
.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/selectcity/CityNameCodeMapping$MucangPOI;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcn/mucang/android/selectcity/z/d;

.field private f:Landroid/widget/ListView;

.field private g:Landroid/widget/EditText;

.field private h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/a/a/e/a/c/b;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/selectcity/b0/a;->d:Ljava/util/List;

    .line 3
    new-instance v0, Lcn/mucang/android/selectcity/b0/a$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/selectcity/b0/a$a;-><init>(Lcn/mucang/android/selectcity/b0/a;)V

    iput-object v0, p0, Lcn/mucang/android/selectcity/b0/a;->h:Ljava/lang/Runnable;

    return-void
.end method

.method private A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/b0/a;->d:Ljava/util/List;

    invoke-static {}, Lcn/mucang/android/selectcity/CityNameCodeMapping;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/selectcity/b0/a;->e:Lcn/mucang/android/selectcity/z/d;

    iget-object v1, p0, Lcn/mucang/android/selectcity/b0/a;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lf/a/a/e/a/b/b;->a(Ljava/util/List;)V

    return-void
.end method

.method private B()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/selectcity/z/d;

    invoke-direct {v0}, Lcn/mucang/android/selectcity/z/d;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/selectcity/b0/a;->e:Lcn/mucang/android/selectcity/z/d;

    .line 2
    iget-object v1, p0, Lcn/mucang/android/selectcity/b0/a;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lf/a/a/e/a/b/b;->a(Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/selectcity/b0/a;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/mucang/android/selectcity/b0/a;->e:Lcn/mucang/android/selectcity/z/d;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private C()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/b0/a;->g:Landroid/widget/EditText;

    new-instance v1, Lcn/mucang/android/selectcity/b0/a$b;

    invoke-direct {v1, p0}, Lcn/mucang/android/selectcity/b0/a$b;-><init>(Lcn/mucang/android/selectcity/b0/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/selectcity/b0/a;->f:Landroid/widget/ListView;

    new-instance v1, Lcn/mucang/android/selectcity/b0/a$c;

    invoke-direct {v1, p0}, Lcn/mucang/android/selectcity/b0/a$c;-><init>(Lcn/mucang/android/selectcity/b0/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private D()V
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/framework/select/city/R$id;->list_view:I

    invoke-virtual {p0, v0}, Lf/a/a/e/a/c/b;->r(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/mucang/android/selectcity/b0/a;->f:Landroid/widget/ListView;

    .line 2
    sget v0, Lcn/mucang/android/framework/select/city/R$id;->edit:I

    invoke-virtual {p0, v0}, Lf/a/a/e/a/c/b;->r(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/mucang/android/selectcity/b0/a;->g:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic w(Lcn/mucang/android/selectcity/b0/a;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/selectcity/b0/a;->g:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic x(Lcn/mucang/android/selectcity/b0/a;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/selectcity/b0/a;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic y(Lcn/mucang/android/selectcity/b0/a;)Lcn/mucang/android/selectcity/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/selectcity/b0/a;->e:Lcn/mucang/android/selectcity/z/d;

    return-object p0
.end method

.method static synthetic z(Lcn/mucang/android/selectcity/b0/a;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/selectcity/b0/a;->h:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method protected s()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/framework/select/city/R$layout;->select__city_list_fragment:I

    return v0
.end method

.method protected t(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/selectcity/b0/a;->D()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/selectcity/b0/a;->B()V

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/selectcity/b0/a;->A()V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/selectcity/b0/a;->C()V

    return-void
.end method
