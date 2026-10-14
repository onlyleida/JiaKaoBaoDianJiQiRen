.class public final synthetic Lcn/mucang/jiakaoyi/uilib/model/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/model/e;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/e;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/c;->a:Lcn/mucang/jiakaoyi/uilib/model/e;

    iput-boolean p2, p0, Lcn/mucang/jiakaoyi/uilib/model/c;->b:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/c;->a:Lcn/mucang/jiakaoyi/uilib/model/e;

    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/model/c;->b:Z

    invoke-virtual {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/model/e;->g(ZLandroid/view/View;)V

    return-void
.end method
