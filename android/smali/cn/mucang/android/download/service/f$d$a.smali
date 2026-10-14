.class Lcn/mucang/android/download/service/f$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/download/service/f$d;->d(Ljava/io/Closeable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/Closeable;


# direct methods
.method constructor <init>(Lcn/mucang/android/download/service/f$d;Ljava/io/Closeable;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcn/mucang/android/download/service/f$d$a;->a:Ljava/io/Closeable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/service/f$d$a;->a:Ljava/io/Closeable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    return-void
.end method
