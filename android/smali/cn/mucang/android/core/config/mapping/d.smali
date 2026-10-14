.class public final synthetic Lcn/mucang/android/core/config/mapping/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/core/config/mapping/ProfileJsonData;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/core/config/mapping/ProfileJsonData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/config/mapping/d;->a:Lcn/mucang/android/core/config/mapping/ProfileJsonData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/core/config/mapping/d;->a:Lcn/mucang/android/core/config/mapping/ProfileJsonData;

    invoke-static {v0}, Lcn/mucang/android/core/config/mapping/i;->n(Lcn/mucang/android/core/config/mapping/ProfileJsonData;)V

    return-void
.end method
