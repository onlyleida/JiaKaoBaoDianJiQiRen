.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/setting/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/z;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/z;->a:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->n0(Ljava/util/List;)V

    return-void
.end method
