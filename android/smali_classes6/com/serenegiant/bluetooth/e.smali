.class public final synthetic Lcom/serenegiant/bluetooth/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/serenegiant/bluetooth/BluetoothManager;

.field public final synthetic b:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/serenegiant/bluetooth/BluetoothManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/serenegiant/bluetooth/e;->a:Lcom/serenegiant/bluetooth/BluetoothManager;

    iput-object p2, p0, Lcom/serenegiant/bluetooth/e;->b:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/serenegiant/bluetooth/e;->a:Lcom/serenegiant/bluetooth/BluetoothManager;

    iget-object v1, p0, Lcom/serenegiant/bluetooth/e;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/serenegiant/bluetooth/BluetoothManager;->b(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
