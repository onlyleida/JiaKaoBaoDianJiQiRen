.class public Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2$f;
    }
.end annotation


# instance fields
.field private A:Landroid/view/ViewGroup;

.field private B:Landroid/widget/LinearLayout;

.field private C:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;

.field private final D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final H:[Landroid/text/InputFilter;

.field private final I:[Landroid/text/InputFilter;

.field private final K:Landroid/text/TextWatcher;

.field private final M:Landroid/text/TextWatcher;

.field private final N:Landroid/text/TextWatcher;

.field private final Q:Landroid/text/TextWatcher;

.field private final T:Landroid/text/TextWatcher;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/CheckBox;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Lcn/mucang/android/image/view/MucangRoundCornerImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Lcn/mucang/android/image/view/MucangRoundCornerImageView;

.field private l:Landroid/widget/RadioGroup;

.field private m:Landroid/widget/RadioGroup;

.field private n:Landroid/widget/EditText;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/RadioButton;

.field private s:Landroid/widget/RadioButton;

.field private t:Landroid/widget/RadioButton;

.field private u:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

.field private v:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

.field private w:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/PictureModel;

.field private x:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VideoModel;

.field private y:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/AutoTeachModel;

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/b;-><init>()V

    const-string v0, "\u65e0"

    const-string v1, "\u5de6\u8f6c\u706f"

    const-string v2, "\u53f3\u8f6c\u706f"

    .line 2
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->D:Ljava/util/List;

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->E:Ljava/util/List;

    new-array v0, v5, [Landroid/text/InputFilter;

    .line 4
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v2

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->H:[Landroid/text/InputFilter;

    new-array v0, v5, [Landroid/text/InputFilter;

    .line 5
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x64

    invoke-direct {v1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v2

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->I:[Landroid/text/InputFilter;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->K:Landroid/text/TextWatcher;

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2$b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->M:Landroid/text/TextWatcher;

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2$c;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2$c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->N:Landroid/text/TextWatcher;

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2$d;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2$d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->Q:Landroid/text/TextWatcher;

    .line 10
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2$e;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2$e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->T:Landroid/text/TextWatcher;

    return-void
.end method

.method private synthetic A(Ljava/lang/Integer;)Lkotlin/v;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->y:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/AutoTeachModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->E:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/AutoTeachModel;->lightId:I

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->x()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic C(Ljava/lang/Integer;)Lkotlin/v;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->y:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/AutoTeachModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->G:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/AutoTeachModel;->gear:I

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->x()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic E(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->u:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->w:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/PictureModel;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->i:Lcn/mucang/android/image/view/MucangRoundCornerImageView;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->g:Landroid/widget/ImageView;

    const-string v2, ""

    invoke-direct {p0, v2, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->m0(Ljava/lang/String;Lcn/mucang/android/image/view/MucangRoundCornerImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->w:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/PictureModel;

    return-void
.end method

.method private synthetic G(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->i0(I)V

    return-void
.end method

.method private synthetic I(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->i0(I)V

    return-void
.end method

.method private synthetic K(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->i0(I)V

    return-void
.end method

.method private synthetic M(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->i0(I)V

    return-void
.end method

.method private synthetic O(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$f;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->l0(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    return-void
.end method

.method private synthetic Q(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->u:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->boundary:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->boundary:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->C:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->boundary:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->m(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V

    :cond_1
    return-void
.end method

.method private synthetic S(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->D:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/z0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/z0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)V

    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$layout;->common_list_popup_item:I

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/ui/widget/d;->b(Landroid/view/View;Ljava/util/List;Lkotlin/jvm/b/l;IZ)V

    return-void
.end method

.method private synthetic U(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->F:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/u0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/u0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)V

    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$layout;->common_list_popup_item:I

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/ui/widget/d;->b(Landroid/view/View;Ljava/util/List;Lkotlin/jvm/b/l;IZ)V

    return-void
.end method

.method private synthetic W(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->n:Landroid/widget/EditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v1

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic Y(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->v:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    iput-boolean p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->sound:Z

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->x()V

    return-void
.end method

.method private synthetic a0(Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->u:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->x()V

    return-void
.end method

.method private synthetic c0(Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->z:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->u:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->C:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->a(Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;Z)V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->x()V

    return-void
.end method

.method private synthetic e0(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 1
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->middleRb:I

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->u:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    const/16 p2, 0x14

    iput p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->grade:I

    goto :goto_0

    .line 3
    :cond_0
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->highRb:I

    if-ne p2, p1, :cond_1

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->u:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    const/16 p2, 0x1e

    iput p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->grade:I

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->u:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    const/16 p2, 0xa

    iput p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->grade:I

    .line 6
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->x()V

    return-void
.end method

.method private synthetic g0(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 1
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->reportRb:I

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->u:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    const/4 p2, 0x1

    iput p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->pointType:I

    goto :goto_0

    .line 3
    :cond_0
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->operateRb:I

    if-ne p2, p1, :cond_1

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->u:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    const/4 p2, 0x2

    iput p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->pointType:I

    goto :goto_0

    .line 5
    :cond_1
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->tipRb:I

    if-ne p2, p1, :cond_2

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->u:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    const/4 p2, 0x3

    iput p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->pointType:I

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->u:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    const/4 p2, 0x0

    iput p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->pointType:I

    .line 8
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->j0()V

    .line 9
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->x()V

    return-void
.end method

.method private i0(I)V
    .locals 7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->w:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/PictureModel;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/PictureModel;->imageUrl:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->x:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VideoModel;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VideoModel;->videoUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-static {v1}, Lf/a/a/a/j/a;->a(Landroid/app/Activity;)Lf/a/a/a/j/a;

    move-result-object v0

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->u:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    iget v4, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    iget-object v5, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->examSiteId:Ljava/lang/String;

    move v2, p1

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;->l(Landroid/app/Activity;IIILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x3e8

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/w0;

    invoke-direct {v3, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/w0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;I)V

    invoke-virtual {v0, v1, v2, v3}, Lf/a/a/a/j/a;->c(Landroid/content/Intent;ILf/a/a/a/j/c;)V

    return-void
.end method

.method private j0()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->u:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->pointType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->H:[Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->H:[Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->H:[Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->f:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->I:[Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->I:[Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->I:[Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->v:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 11
    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->sound:Z

    .line 12
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private k0()V
    .locals 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->n:Landroid/widget/EditText;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->T:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->n:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->y:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/AutoTeachModel;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/AutoTeachModel;->wheelDegree:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->n:Landroid/widget/EditText;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->T:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->y:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/AutoTeachModel;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/AutoTeachModel;->lightId:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->findLightWithId(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    move-result-object v1

    .line 5
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->Off:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    const-string v3, "\u65e0"

    if-ne v1, v2, :cond_0

    .line 6
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->o:Landroid/widget/TextView;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :goto_0
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->y:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/AutoTeachModel;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/AutoTeachModel;->gear:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v1

    .line 9
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v1, v4, :cond_1

    .line 10
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->p:Landroid/widget/TextView;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :goto_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->b()Z

    move-result v1

    const/16 v4, 0xb

    const/16 v5, 0x8

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eqz v1, :cond_2

    const-string v1, "P\u6321"

    const-string v11, "N\u6321"

    const-string v12, "R\u6321"

    const-string v13, "D\u6321"

    .line 13
    filled-new-array {v3, v1, v11, v12, v13}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->F:Ljava/util/List;

    new-array v1, v6, [Ljava/lang/Integer;

    .line 14
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->G:Ljava/util/List;

    goto :goto_2

    :cond_2
    const-string v11, "\u65e0"

    const-string v12, "1\u6321"

    const-string v13, "2\u6321"

    const-string v14, "3\u6321"

    const-string v15, "4\u6321"

    const-string v16, "5\u6321"

    const-string v17, "\u7a7a\u6321"

    const-string v18, "\u5012\u6321"

    .line 15
    filled-new-array/range {v11 .. v18}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->F:Ljava/util/List;

    new-array v1, v5, [Ljava/lang/Integer;

    .line 16
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v7

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->G:Ljava/util/List;

    .line 17
    :goto_2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->o:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/o0;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/o0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->p:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a1;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->q:Landroid/view/View;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b1;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private l0(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->u:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->K:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->b:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->c:Landroid/widget/EditText;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->M:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->d:Landroid/widget/EditText;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->N:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->e:Landroid/widget/EditText;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->Q:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->f:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->f:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->i:Lcn/mucang/android/image/view/MucangRoundCornerImageView;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->h:Landroid/widget/ImageView;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->g:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->m0(Ljava/lang/String;Lcn/mucang/android/image/view/MucangRoundCornerImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->k:Lcn/mucang/android/image/view/MucangRoundCornerImageView;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->j:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0, v4, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->m0(Ljava/lang/String;Lcn/mucang/android/image/view/MucangRoundCornerImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 14
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    .line 16
    :cond_0
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->v:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    .line 17
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->w:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/PictureModel;

    .line 18
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->x:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VideoModel;

    .line 19
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->y:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/AutoTeachModel;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->z:Ljava/util/List;

    .line 21
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;

    .line 22
    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    if-eqz v1, :cond_2

    .line 23
    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->v:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    .line 24
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->b:Landroid/widget/EditText;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->voice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->c:Landroid/widget/EditText;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->middleVoice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->d:Landroid/widget/EditText;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->highVoice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->e:Landroid/widget/EditText;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->shortVoice:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->f:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->v:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    iget-boolean v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->sound:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 29
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->f:Landroid/widget/CheckBox;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/x0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/x0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 30
    :cond_2
    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/PictureModel;

    if-eqz v1, :cond_3

    .line 31
    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/PictureModel;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->w:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/PictureModel;

    .line 32
    invoke-direct {p0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->w(Z)V

    goto :goto_0

    .line 33
    :cond_3
    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VideoModel;

    if-eqz v1, :cond_4

    .line 34
    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VideoModel;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->x:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VideoModel;

    const/4 v0, 0x1

    .line 35
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->w(Z)V

    goto :goto_0

    .line 36
    :cond_4
    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;

    if-eqz v1, :cond_5

    .line 37
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->z:Ljava/util/List;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 38
    :cond_5
    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/AutoTeachModel;

    if-eqz v1, :cond_1

    .line 39
    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/AutoTeachModel;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->y:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/AutoTeachModel;

    goto :goto_0

    .line 40
    :cond_6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->y:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/AutoTeachModel;

    if-nez p1, :cond_7

    .line 41
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/AutoTeachModel;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/AutoTeachModel;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->y:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/AutoTeachModel;

    .line 42
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->u:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_7
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->k0()V

    .line 44
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->B:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->z:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->u:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->boundary:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/r0;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/r0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)V

    invoke-direct {p1, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;-><init>(Landroid/widget/LinearLayout;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->C:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;

    .line 45
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->i()V

    .line 46
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->A:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->u:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/t0;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/t0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)V

    invoke-direct {p1, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;-><init>(Landroid/view/ViewGroup;ILcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 47
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->K:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 48
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->M:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 49
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->d:Landroid/widget/EditText;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->N:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 50
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->e:Landroid/widget/EditText;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->Q:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 51
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->n0()V

    .line 52
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->o0()V

    return-void
.end method

.method private m0(Ljava/lang/String;Lcn/mucang/android/image/view/MucangRoundCornerImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    invoke-static {p2, p1, v2}, Lf/a/a/b/a/a;->i(Landroid/widget/ImageView;Ljava/lang/String;I)V

    if-eqz p4, :cond_1

    .line 5
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p4, :cond_1

    .line 8
    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private n0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->u:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->l:Landroid/widget/RadioGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->u:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->grade:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->l:Landroid/widget/RadioGroup;

    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->highRb:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x14

    if-lt v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->l:Landroid/widget/RadioGroup;

    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->middleRb:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->l:Landroid/widget/RadioGroup;

    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->lowRb:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->l:Landroid/widget/RadioGroup;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/v0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/v0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method private o0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->u:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->m:Landroid/widget/RadioGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->u:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->pointType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->m:Landroid/widget/RadioGroup;

    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->reportRb:I

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->m:Landroid/widget/RadioGroup;

    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->operateRb:I

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->m:Landroid/widget/RadioGroup;

    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->tipRb:I

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->m:Landroid/widget/RadioGroup;

    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->noneRb:I

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 8
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->j0()V

    .line 9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->u:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->pointType:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->s:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->t:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    goto :goto_1

    .line 13
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->r:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 14
    :cond_5
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->m:Landroid/widget/RadioGroup;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/m0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/m0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method static synthetic r(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->v:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    return-object p0
.end method

.method static synthetic s(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;)Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->v:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    return-object p1
.end method

.method static synthetic t(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->u:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    return-object p0
.end method

.method static synthetic u(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->x()V

    return-void
.end method

.method static synthetic v(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)Lcn/mucang/android/jiakaoyi/teachingk2/form/model/AutoTeachModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->y:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/AutoTeachModel;

    return-object p0
.end method

.method private w(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->x:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VideoModel;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VideoModel;->videoUrl:Ljava/lang/String;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->k:Lcn/mucang/android/image/view/MucangRoundCornerImageView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->j:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->m0(Ljava/lang/String;Lcn/mucang/android/image/view/MucangRoundCornerImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->w:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/PictureModel;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/PictureModel;->imageUrl:Ljava/lang/String;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->i:Lcn/mucang/android/image/view/MucangRoundCornerImageView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->h:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->g:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->m0(Ljava/lang/String;Lcn/mucang/android/image/view/MucangRoundCornerImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method private x()V
    .locals 2

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$e;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$e;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$e;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic y(IIILandroid/content/Intent;)V
    .locals 0

    const/4 p2, -0x1

    if-ne p3, p2, :cond_3

    const-string p2, "key.result"

    .line 1
    invoke-virtual {p4, p2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/MaterialModel;

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->w:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/PictureModel;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/PictureModel;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/PictureModel;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->w:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/PictureModel;

    .line 4
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->u:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->w:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/PictureModel;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/MaterialModel;->getPath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/PictureModel;->imageUrl:Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->w(Z)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->x:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VideoModel;

    if-nez p1, :cond_2

    .line 8
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VideoModel;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VideoModel;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->x:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VideoModel;

    .line 9
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->u:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->x:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VideoModel;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/MaterialModel;->getPath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VideoModel;->videoUrl:Ljava/lang/String;

    .line 11
    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->w(Z)V

    .line 12
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->x()V

    :cond_3
    return-void
.end method


# virtual methods
.method public synthetic B(Ljava/lang/Integer;)Lkotlin/v;
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->A(Ljava/lang/Integer;)Lkotlin/v;

    move-result-object p1

    return-object p1
.end method

.method public synthetic D(Ljava/lang/Integer;)Lkotlin/v;
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->C(Ljava/lang/Integer;)Lkotlin/v;

    move-result-object p1

    return-object p1
.end method

.method public synthetic F(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->E(Landroid/view/View;)V

    return-void
.end method

.method public synthetic H(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->G(Landroid/view/View;)V

    return-void
.end method

.method public synthetic J(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->I(Landroid/view/View;)V

    return-void
.end method

.method public synthetic L(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->K(Landroid/view/View;)V

    return-void
.end method

.method public synthetic N(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->M(Landroid/view/View;)V

    return-void
.end method

.method public synthetic P(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->O(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$f;)V

    return-void
.end method

.method public synthetic R(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->Q(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    return-void
.end method

.method public synthetic T(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->S(Landroid/view/View;)V

    return-void
.end method

.method public synthetic V(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->U(Landroid/view/View;)V

    return-void
.end method

.method public synthetic X(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->W(Landroid/view/View;)V

    return-void
.end method

.method public synthetic Z(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->Y(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public synthetic b0(Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->a0(Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;)V

    return-void
.end method

.method public synthetic d0(Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->c0(Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;)V

    return-void
.end method

.method public synthetic f0(Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->e0(Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8f93\u51fa\u5f62\u5f0f\u9875\u9762"

    return-object v0
.end method

.method public synthetic h0(Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->g0(Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$layout;->fragment_collect_form:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcn/mucang/android/core/config/q;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->voice_input:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->b:Landroid/widget/EditText;

    .line 3
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->middle_input:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->c:Landroid/widget/EditText;

    .line 4
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->high_input:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->d:Landroid/widget/EditText;

    .line 5
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->short_input:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->e:Landroid/widget/EditText;

    .line 6
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->selectSound:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->f:Landroid/widget/CheckBox;

    .line 7
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->addImageIv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->h:Landroid/widget/ImageView;

    .line 8
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->imageIv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/image/view/MucangRoundCornerImageView;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->i:Lcn/mucang/android/image/view/MucangRoundCornerImageView;

    .line 9
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->addVideoIv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->j:Landroid/widget/ImageView;

    .line 10
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->videoIv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/image/view/MucangRoundCornerImageView;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->k:Lcn/mucang/android/image/view/MucangRoundCornerImageView;

    .line 11
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->closeIv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->g:Landroid/widget/ImageView;

    .line 12
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/l0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/l0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->h:Landroid/widget/ImageView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/s0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/s0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->i:Lcn/mucang/android/image/view/MucangRoundCornerImageView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/n0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/n0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->j:Landroid/widget/ImageView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/c1;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/c1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->k:Lcn/mucang/android/image/view/MucangRoundCornerImageView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/q0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/q0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->addLineModelContainer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->A:Landroid/view/ViewGroup;

    .line 18
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->lineTipsContainer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->B:Landroid/widget/LinearLayout;

    .line 19
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->wheelEt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->n:Landroid/widget/EditText;

    .line 20
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->lightTv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->o:Landroid/widget/TextView;

    .line 21
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->gearTv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->p:Landroid/widget/TextView;

    .line 22
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->refreshIv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->q:Landroid/view/View;

    .line 23
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->levelRg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->l:Landroid/widget/RadioGroup;

    .line 24
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->typeRg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->m:Landroid/widget/RadioGroup;

    .line 25
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->reportRb:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->r:Landroid/widget/RadioButton;

    .line 26
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->operateRb:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->s:Landroid/widget/RadioButton;

    .line 27
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->tipRb:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->t:Landroid/widget/RadioButton;

    .line 28
    const-class p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$f;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/p0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/p0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)V

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 29
    const-class p2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/y0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/y0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)V

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 30
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->l()Z

    move-result p2

    const/16 v0, 0x8

    if-eqz p2, :cond_0

    .line 31
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->noneRb:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->t:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public synthetic z(IIILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->y(IIILandroid/content/Intent;)V

    return-void
.end method
