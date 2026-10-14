.class public final synthetic Lcn/mucang/android/core/config/mapping/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/Long;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/config/mapping/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/android/core/config/mapping/e;->b:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/core/config/mapping/e;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/mucang/android/core/config/mapping/e;->b:Ljava/lang/Long;

    invoke-static {v0, v1}, Lcn/mucang/android/core/config/mapping/i;->o(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method
