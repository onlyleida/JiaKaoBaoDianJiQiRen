.class Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity$b;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    .line 2
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity$b;->a:Landroid/widget/TextView;

    const/16 v0, 0x11

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity$b;->a:Landroid/widget/TextView;

    const v0, -0xcccccd

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity$b;->a:Landroid/widget/TextView;

    const/4 v0, 0x0

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method
