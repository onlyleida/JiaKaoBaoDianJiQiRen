.class Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$b;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field private final b:Landroid/view/View$OnClickListener;


# direct methods
.method private constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$b;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    .line 4
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$b;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View$OnClickListener;Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$b;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public c(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;I)V
    .locals 2

    if-nez p2, :cond_1

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;->c:Landroid/widget/TextView;

    const-string v1, "\u91c7\u96c6\u539f\u70b9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$b;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage;->i(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u5df2\u91c7\u96c6"

    goto :goto_0

    :cond_0
    const-string v1, "\u672a\u91c7\u96c6"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;->b:Landroid/widget/ImageView;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->ic_caiji_yuandian:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;->a:Landroid/view/View;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->shape_caiji_yuandian:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 5
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;->c:Landroid/widget/TextView;

    const-string v1, "\u91c7\u96c6\u8003\u8bd5\u9879\u76ee"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;->d:Landroid/widget/TextView;

    const-string v1, "\u91c7\u96c6\u5012\u8f66\u5165\u5e93\u7b49\u8003\u8bd5\u9879\u76ee"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;->b:Landroid/widget/ImageView;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->ic_caiji_xiangmu:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;->a:Landroid/view/View;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->shape_caiji_xiangmu:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 9
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;->c:Landroid/widget/TextView;

    const-string v1, "\u91c7\u96c6\u8003\u573a\u7269\u4f53"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;->d:Landroid/widget/TextView;

    const-string v1, "\u91c7\u96c6\u8003\u573a\u91cc\u6bd4\u5982\u82b1\u575b\u3001\u7535\u7ebf\u6746\u7b49\u7269\u4f53"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;->b:Landroid/widget/ImageView;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->ic_caiji_wuti:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;->a:Landroid/view/View;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->shape_caiji_wuti:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    .line 13
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;->c:Landroid/widget/TextView;

    const-string v1, "\u91c7\u96c6\u7535\u5b50\u6805\u680f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;->d:Landroid/widget/TextView;

    const-string v1, "\u91c7\u96c6\u8003\u573a\u91cc\u8f66\u8f86\u7981\u6b62\u9a76\u5165\u533a\u57df"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;->b:Landroid/widget/ImageView;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->ic_caiji_zhalan:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;->a:Landroid/view/View;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->shape_caiji_zhalan:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    .line 17
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;->c:Landroid/widget/TextView;

    const-string v1, "\u91c7\u96c6\u5468\u56f4\u73af\u5883"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;->d:Landroid/widget/TextView;

    const-string v1, "\u91c7\u96c6\u64cd\u573a\u5916\u56f4\u5efa\u7b51\u3001\u73af\u5883\u7b49"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;->b:Landroid/widget/ImageView;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->ic_caiji_huanjing:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;->a:Landroid/view/View;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->shape_caiji_huanjing:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x5

    if-ne p2, v0, :cond_6

    .line 21
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;->c:Landroid/widget/TextView;

    const-string v1, "\u91c7\u96c6\u7279\u6b8a\u533a\u57df"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;->d:Landroid/widget/TextView;

    const-string v1, "\u969c\u788d\u8bc6\u522b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;->b:Landroid/widget/ImageView;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->ic_caiji_teshu:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;->a:Landroid/view/View;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->shape_caiji_teshu:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 25
    :cond_6
    :goto_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 26
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$b;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public d(Landroid/view/ViewGroup;I)Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;
    .locals 3

    .line 1
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$layout;->site_data_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$b;->c(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$b;->d(Landroid/view/ViewGroup;I)Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteDataPage$c;

    move-result-object p1

    return-object p1
.end method
