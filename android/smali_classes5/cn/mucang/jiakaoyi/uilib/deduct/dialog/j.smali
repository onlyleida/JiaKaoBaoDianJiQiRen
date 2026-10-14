.class public final synthetic Lcn/mucang/jiakaoyi/uilib/deduct/dialog/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;

.field public final synthetic b:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/j;->a:Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/j;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/j;->a:Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/j;->b:Ljava/io/File;

    invoke-static {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->t(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;Ljava/io/File;Landroid/view/View;)V

    return-void
.end method
