.class public Lcn/mucang/android/core/widget/datepick/a;
.super Landroidx/fragment/app/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/widget/datepick/a$h;,
        Lcn/mucang/android/core/widget/datepick/a$g;
    }
.end annotation


# instance fields
.field private a:Lcn/mucang/android/core/widget/datepick/SelectDateView;

.field private b:Lcn/mucang/android/core/widget/datepick/SelectDateView;

.field private c:Lcn/mucang/android/core/widget/datepick/SelectDateView;

.field private d:Lcn/mucang/android/core/widget/datepick/SelectDateView;

.field private e:Lcn/mucang/android/core/widget/datepick/SelectDateView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Ljava/util/Calendar;

.field private n:Lcn/mucang/android/core/widget/datepick/a$h;

.field private o:Ljava/lang/String;

.field private p:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    const-string v0, "datetime"

    .line 2
    iput-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->o:Ljava/lang/String;

    return-void
.end method

.method private A()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/widget/datepick/a;->H()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/core/widget/datepick/a;->E()V

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/core/widget/datepick/a;->B()V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/core/widget/datepick/a;->C()V

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/core/widget/datepick/a;->D()V

    return-void
.end method

.method private B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->m:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2
    invoke-direct {p0, v0}, Lcn/mucang/android/core/widget/datepick/a;->x(I)V

    return-void
.end method

.method private C()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->m:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x18

    if-ge v2, v3, :cond_0

    .line 3
    invoke-direct {p0, v2}, Lcn/mucang/android/core/widget/datepick/a;->J(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lcn/mucang/android/core/widget/datepick/a;->d:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    invoke-virtual {v2, v1}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->setDataList(Ljava/util/List;)V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/core/widget/datepick/a;->d:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    invoke-direct {p0, v0}, Lcn/mucang/android/core/widget/datepick/a;->J(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->setSelected(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->d:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    new-instance v1, Lcn/mucang/android/core/widget/datepick/a$c;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/widget/datepick/a$c;-><init>(Lcn/mucang/android/core/widget/datepick/a;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->setOnChangeListener(Lcn/mucang/android/core/widget/datepick/SelectDateView$b;)V

    return-void
.end method

.method private D()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->m:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x3c

    if-ge v2, v3, :cond_0

    .line 3
    invoke-direct {p0, v2}, Lcn/mucang/android/core/widget/datepick/a;->J(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lcn/mucang/android/core/widget/datepick/a;->e:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    invoke-virtual {v2, v1}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->setDataList(Ljava/util/List;)V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/core/widget/datepick/a;->e:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    invoke-direct {p0, v0}, Lcn/mucang/android/core/widget/datepick/a;->J(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->setSelected(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->e:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    new-instance v1, Lcn/mucang/android/core/widget/datepick/a$b;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/widget/datepick/a$b;-><init>(Lcn/mucang/android/core/widget/datepick/a;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->setOnChangeListener(Lcn/mucang/android/core/widget/datepick/SelectDateView$b;)V

    return-void
.end method

.method private E()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->m:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/16 v3, 0xc

    if-gt v1, v3, :cond_0

    .line 3
    invoke-direct {p0, v1}, Lcn/mucang/android/core/widget/datepick/a;->J(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/core/widget/datepick/a;->b:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    invoke-virtual {v1, v2}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->setDataList(Ljava/util/List;)V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/core/widget/datepick/a;->b:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    invoke-direct {p0, v0}, Lcn/mucang/android/core/widget/datepick/a;->J(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->setSelected(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->b:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    new-instance v1, Lcn/mucang/android/core/widget/datepick/a$d;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/widget/datepick/a$d;-><init>(Lcn/mucang/android/core/widget/datepick/a;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->setOnChangeListener(Lcn/mucang/android/core/widget/datepick/SelectDateView$b;)V

    return-void
.end method

.method private F()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_1

    const-string v1, "time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->a:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->b:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->c:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->d:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->e:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private G(Landroid/view/View;)V
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/framework/core/R$id;->tv_sure:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->f:Landroid/widget/TextView;

    .line 2
    sget v0, Lcn/mucang/android/framework/core/R$id;->tv_year:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->g:Landroid/widget/TextView;

    .line 3
    sget v0, Lcn/mucang/android/framework/core/R$id;->tv_month:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->h:Landroid/widget/TextView;

    .line 4
    sget v0, Lcn/mucang/android/framework/core/R$id;->tv_day:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->i:Landroid/widget/TextView;

    .line 5
    sget v0, Lcn/mucang/android/framework/core/R$id;->tv_hour:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->j:Landroid/widget/TextView;

    .line 6
    sget v0, Lcn/mucang/android/framework/core/R$id;->tv_minute:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->k:Landroid/widget/TextView;

    .line 7
    sget v0, Lcn/mucang/android/framework/core/R$id;->year:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/core/widget/datepick/SelectDateView;

    iput-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->a:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    .line 8
    sget v0, Lcn/mucang/android/framework/core/R$id;->month:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/core/widget/datepick/SelectDateView;

    iput-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->b:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    .line 9
    sget v0, Lcn/mucang/android/framework/core/R$id;->day:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/core/widget/datepick/SelectDateView;

    iput-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->c:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    .line 10
    sget v0, Lcn/mucang/android/framework/core/R$id;->hour:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/core/widget/datepick/SelectDateView;

    iput-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->d:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    .line 11
    sget v0, Lcn/mucang/android/framework/core/R$id;->minute:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/core/widget/datepick/SelectDateView;

    iput-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->e:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    .line 12
    sget v0, Lcn/mucang/android/framework/core/R$id;->rl_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcn/mucang/android/core/widget/datepick/a;->l:Landroid/widget/RelativeLayout;

    return-void
.end method

.method private H()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->m:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v3, v0, -0x64

    :goto_0
    add-int/lit8 v4, v0, 0x64

    if-gt v3, v4, :cond_0

    .line 3
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->a:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    invoke-virtual {v0, v2}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->setDataList(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->a:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    iget-object v2, p0, Lcn/mucang/android/core/widget/datepick/a;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->setSelected(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->a:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    new-instance v1, Lcn/mucang/android/core/widget/datepick/a$e;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/widget/datepick/a$e;-><init>(Lcn/mucang/android/core/widget/datepick/a;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->setOnChangeListener(Lcn/mucang/android/core/widget/datepick/SelectDateView$b;)V

    return-void
.end method

.method public static I(IILjava/lang/String;J)Lcn/mucang/android/core/widget/datepick/a;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sure_color"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "content_color"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "type"

    .line 4
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "value"

    .line 5
    invoke-virtual {v0, p0, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 6
    new-instance p0, Lcn/mucang/android/core/widget/datepick/a;

    invoke-direct {p0}, Lcn/mucang/android/core/widget/datepick/a;-><init>()V

    .line 7
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private J(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method static synthetic r(Lcn/mucang/android/core/widget/datepick/a;)Lcn/mucang/android/core/widget/datepick/a$h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/widget/datepick/a;->n:Lcn/mucang/android/core/widget/datepick/a$h;

    return-object p0
.end method

.method static synthetic s(Lcn/mucang/android/core/widget/datepick/a;)Ljava/util/Calendar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/widget/datepick/a;->m:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic t(Lcn/mucang/android/core/widget/datepick/a;)Lcn/mucang/android/core/widget/datepick/SelectDateView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/widget/datepick/a;->e:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    return-object p0
.end method

.method static synthetic u(Lcn/mucang/android/core/widget/datepick/a;)Lcn/mucang/android/core/widget/datepick/SelectDateView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/widget/datepick/a;->d:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    return-object p0
.end method

.method static synthetic v(Lcn/mucang/android/core/widget/datepick/a;)Lcn/mucang/android/core/widget/datepick/SelectDateView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/widget/datepick/a;->c:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    return-object p0
.end method

.method static synthetic w(Lcn/mucang/android/core/widget/datepick/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/widget/datepick/a;->x(I)V

    return-void
.end method

.method private x(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->m:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    :goto_0
    if-gt v2, v0, :cond_0

    .line 4
    invoke-direct {p0, v2}, Lcn/mucang/android/core/widget/datepick/a;->J(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->c:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->setDataList(Ljava/util/List;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->c:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    invoke-direct {p0, p1}, Lcn/mucang/android/core/widget/datepick/a;->J(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->setSelected(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/android/core/widget/datepick/a;->c:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    new-instance v0, Lcn/mucang/android/core/widget/datepick/a$f;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/widget/datepick/a$f;-><init>(Lcn/mucang/android/core/widget/datepick/a;)V

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->setOnChangeListener(Lcn/mucang/android/core/widget/datepick/SelectDateView$b;)V

    return-void
.end method

.method private y()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "sure_color"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "content_color"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v1, :cond_0

    .line 4
    iget-object v3, p0, Lcn/mucang/android/core/widget/datepick/a;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    if-eqz v2, :cond_1

    .line 5
    invoke-direct {p0, v2}, Lcn/mucang/android/core/widget/datepick/a;->z(I)V

    :cond_1
    const-string v1, "type"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/core/widget/datepick/a;->o:Ljava/lang/String;

    const-string v1, "value"

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/core/widget/datepick/a;->p:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 8
    iget-object v2, p0, Lcn/mucang/android/core/widget/datepick/a;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->o:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-direct {p0}, Lcn/mucang/android/core/widget/datepick/a;->F()V

    :cond_3
    return-void
.end method

.method private z(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->a:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->setColor(I)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->b:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->setColor(I)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->c:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->setColor(I)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->d:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->setColor(I)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a;->e:Lcn/mucang/android/core/widget/datepick/SelectDateView;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->setColor(I)V

    return-void
.end method


# virtual methods
.method public K(Lcn/mucang/android/core/widget/datepick/a$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/widget/datepick/a;->n:Lcn/mucang/android/core/widget/datepick/a$h;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/mucang/android/framework/core/R$style;->core__base_dialog:I

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x50

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 6
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 7
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 8
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-object p1

    .line 10
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Lcn/mucang/android/framework/core/R$layout;->dialogfragment_select_date:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/core/widget/datepick/a;->G(Landroid/view/View;)V

    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/core/widget/datepick/a;->m:Ljava/util/Calendar;

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/core/widget/datepick/a;->y()V

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/core/widget/datepick/a;->A()V

    .line 6
    iget-object p2, p0, Lcn/mucang/android/core/widget/datepick/a;->f:Landroid/widget/TextView;

    new-instance p3, Lcn/mucang/android/core/widget/datepick/a$a;

    invoke-direct {p3, p0}, Lcn/mucang/android/core/widget/datepick/a$a;-><init>(Lcn/mucang/android/core/widget/datepick/a;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
