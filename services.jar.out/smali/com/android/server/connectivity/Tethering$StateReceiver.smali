.class Lcom/android/server/connectivity/Tethering$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$StateReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0xb

    .line 1014
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1015
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 1016
    :cond_0
    const-string/jumbo v7, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1017
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->-get9(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 1018
    :try_start_0
    const-string/jumbo v7, "connected"

    const/4 v9, 0x0

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 1019
    .local v5, "usbConnected":Z
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const-string/jumbo v9, "rndis"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v7, v9}, Lcom/android/server/connectivity/Tethering;->-set1(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1021
    if-eqz v5, :cond_1

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->-get10(Lcom/android/server/connectivity/Tethering;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->-get15(Lcom/android/server/connectivity/Tethering;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1022
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static {v7, v9, v10}, Lcom/android/server/connectivity/Tethering;->-wrap9(Lcom/android/server/connectivity/Tethering;ZI)V

    .line 1024
    :cond_1
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v9, 0x0

    invoke-static {v7, v9}, Lcom/android/server/connectivity/Tethering;->-set2(Lcom/android/server/connectivity/Tethering;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v5    # "usbConnected":Z
    :cond_2
    :goto_0
    :pswitch_0
    monitor-exit v8

    .line 1013
    :cond_3
    :goto_1
    return-void

    .line 1017
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 1026
    :cond_4
    const-string/jumbo v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1028
    const-string/jumbo v7, "networkInfo"

    .line 1027
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 1029
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_3

    .line 1030
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v7, v8, :cond_3

    .line 1032
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->-get11(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v7

    const v8, 0x50003

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 1034
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_5
    const-string/jumbo v7, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1035
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->-get9(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 1036
    :try_start_1
    const-string/jumbo v7, "wifi_state"

    .line 1037
    const/16 v9, 0xb

    .line 1036
    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1038
    .local v1, "curState":I
    packed-switch v1, :pswitch_data_0

    .line 1058
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->-get12(Lcom/android/server/connectivity/Tethering;)Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v2, v7, :cond_6

    .line 1060
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->-get12(Lcom/android/server/connectivity/Tethering;)Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1059
    iget-object v4, v7, Lcom/android/server/connectivity/Tethering$TetherState;->mStateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 1061
    .local v4, "tism":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    invoke-virtual {v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->interfaceType()I

    move-result v7

    if-nez v7, :cond_7

    .line 1063
    const v7, 0x50067

    .line 1062
    invoke-virtual {v4, v7}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V

    .line 1069
    .end local v4    # "tism":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    :cond_6
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v9, 0x0

    invoke-static {v7, v9}, Lcom/android/server/connectivity/Tethering;->-set3(Lcom/android/server/connectivity/Tethering;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1035
    .end local v1    # "curState":I
    .end local v2    # "i":I
    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7

    .line 1044
    .restart local v1    # "curState":I
    :pswitch_1
    :try_start_2
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->-get16(Lcom/android/server/connectivity/Tethering;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1045
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Lcom/android/server/connectivity/Tethering;->-wrap9(Lcom/android/server/connectivity/Tethering;ZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    .line 1058
    .restart local v2    # "i":I
    .restart local v4    # "tism":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1073
    .end local v1    # "curState":I
    .end local v2    # "i":I
    .end local v4    # "tism":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    :cond_8
    const-string/jumbo v7, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1074
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v7}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    goto/16 :goto_1

    .line 1075
    :cond_9
    const-string/jumbo v7, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1076
    const-string/jumbo v7, "wifi_state"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1078
    .local v6, "wifiApState":I
    const/16 v7, 0xd

    if-eq v6, v7, :cond_a

    .line 1079
    if-ne v6, v8, :cond_3

    .line 1080
    :cond_a
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->-get1(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 1081
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_1

    .line 1038
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
