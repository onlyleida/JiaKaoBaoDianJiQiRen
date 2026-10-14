.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/communicate/w/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Exception;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Exception;Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/i;->a:Ljava/lang/Exception;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/i;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/i;->a:Ljava/lang/Exception;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/i;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->p(Ljava/lang/Exception;Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    return-void
.end method
