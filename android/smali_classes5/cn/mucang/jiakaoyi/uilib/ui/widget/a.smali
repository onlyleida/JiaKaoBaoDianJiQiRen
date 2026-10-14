.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lkotlin/jvm/b/l;

.field public final synthetic e:Landroidx/appcompat/widget/d0;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;ZLjava/util/List;Lkotlin/jvm/b/l;Landroidx/appcompat/widget/d0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/a;->a:Landroid/view/View;

    iput-boolean p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/a;->b:Z

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/a;->c:Ljava/util/List;

    iput-object p4, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/a;->d:Lkotlin/jvm/b/l;

    iput-object p5, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/a;->e:Landroidx/appcompat/widget/d0;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/a;->a:Landroid/view/View;

    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/a;->b:Z

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/a;->c:Ljava/util/List;

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/a;->d:Lkotlin/jvm/b/l;

    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/a;->e:Landroidx/appcompat/widget/d0;

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-wide v8, p4

    invoke-static/range {v0 .. v9}, Lcn/mucang/jiakaoyi/uilib/ui/widget/d;->a(Landroid/view/View;ZLjava/util/List;Lkotlin/jvm/b/l;Landroidx/appcompat/widget/d0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
