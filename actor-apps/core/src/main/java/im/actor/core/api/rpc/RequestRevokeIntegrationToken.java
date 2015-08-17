package im.actor.core.api.rpc;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.runtime.bser.*;
import im.actor.runtime.collections.*;
import static im.actor.runtime.bser.Utils.*;
import im.actor.core.network.parser.*;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;
import com.google.j2objc.annotations.ObjectiveCName;
import java.io.IOException;
import java.util.List;
import java.util.ArrayList;
import im.actor.core.api.*;

public class RequestRevokeIntegrationToken extends Request<ResponseIntegrationToken> {

    public static final int HEADER = 0xb8;
    public static RequestRevokeIntegrationToken fromBytes(byte[] data) throws IOException {
        return Bser.parse(new RequestRevokeIntegrationToken(), data);
    }

    private ApiOutPeer groupPeer;

    public RequestRevokeIntegrationToken(@NotNull ApiOutPeer groupPeer) {
        this.groupPeer = groupPeer;
    }

    public RequestRevokeIntegrationToken() {

    }

    @NotNull
    public ApiOutPeer getGroupPeer() {
        return this.groupPeer;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.groupPeer = values.getObj(1, new ApiOutPeer());
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        if (this.groupPeer == null) {
            throw new IOException();
        }
        writer.writeObject(1, this.groupPeer);
    }

    @Override
    public String toString() {
        String res = "rpc RevokeIntegrationToken{";
        res += "groupPeer=" + this.groupPeer;
        res += "}";
        return res;
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}
