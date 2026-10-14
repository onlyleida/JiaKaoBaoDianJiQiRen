.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$TrainingItemBinder$b;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$TrainingItemBinder;->C(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$TrainingItemBinder$setupSafe$adapter$1",
        "Landroid/widget/ArrayAdapter;",
        "",
        "getDropDownView",
        "Landroid/view/View;",
        "position",
        "",
        "convertView",
        "parent",
        "Landroid/view/ViewGroup;",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:[Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;


# direct methods
.method constructor <init>(Ljava/util/List;[Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$TrainingItemBinder$b;->a:Ljava/util/List;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$TrainingItemBinder$b;->b:[Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;

    .line 1
    invoke-direct {p0, p3, p4, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$layout;->common_spinner_drop_down_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    :cond_0
    sget p3, Lcom/mucang/android/jiakaoyi/uilib/R$id;->text:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 3
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->iv:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$TrainingItemBinder$b;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$TrainingItemBinder$b;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$TrainingItemBinder$b;->b:[Lcn/mucang/android/jiakaoyi/teachingk2/safe/FenceConfig;

    aget-object p1, v3, p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 7
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setSelected(Z)V

    const/16 p1, 0x8

    .line 9
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const-string p1, "view"

    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method
