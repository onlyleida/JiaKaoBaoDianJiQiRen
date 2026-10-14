.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/setting/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity$b;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity$b;Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/v;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity$b;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/v;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/v;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity$b;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/v;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;->p(Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity$b;Lcn/mucang/jiakaoyi/uilib/ui/setting/DebugToolsActivity;Ljava/util/List;)V

    return-void
.end method
