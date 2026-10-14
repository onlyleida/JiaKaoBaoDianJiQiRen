.class public final synthetic Lcn/mucang/jiakaoyi/uilib/diff/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/diff/i;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/model/i;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/diff/i;Lcn/mucang/jiakaoyi/uilib/model/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/diff/a;->a:Lcn/mucang/jiakaoyi/uilib/diff/i;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/diff/a;->b:Lcn/mucang/jiakaoyi/uilib/model/i;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/a;->a:Lcn/mucang/jiakaoyi/uilib/diff/i;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/diff/a;->b:Lcn/mucang/jiakaoyi/uilib/model/i;

    invoke-static {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/diff/i;->o(Lcn/mucang/jiakaoyi/uilib/diff/i;Lcn/mucang/jiakaoyi/uilib/model/i;Landroid/view/View;)V

    return-void
.end method
