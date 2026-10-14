.class Lcom/nirvana/tools/crash/CrashUcSdk$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirvana/tools/crash/CrashUcSdk;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nirvana/tools/crash/CrashUcSdk;


# direct methods
.method constructor <init>(Lcom/nirvana/tools/crash/CrashUcSdk;)V
    .locals 0

    iput-object p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk$2;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk$2;->this$0:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-static {v0}, Lcom/nirvana/tools/crash/CrashUcSdk;->access$100(Lcom/nirvana/tools/crash/CrashUcSdk;)V

    return-void
.end method
