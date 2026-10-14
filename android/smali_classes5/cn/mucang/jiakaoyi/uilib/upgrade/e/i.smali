.class public final synthetic Lcn/mucang/jiakaoyi/uilib/upgrade/e/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/framework/h/b;


# direct methods
.method public synthetic constructor <init>(ILcn/mucang/jiakaoyi/uilib/upgrade/e/p;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/i;->a:I

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/i;->b:Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/i;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/i;->a:I

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/i;->b:Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/i;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-static {v0, v1, v2, p1}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->r(ILcn/mucang/jiakaoyi/uilib/upgrade/e/p;Lcn/mucang/android/jiakaoyi/framework/h/b;Landroid/view/View;)V

    return-void
.end method
